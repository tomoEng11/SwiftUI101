//
//  SpiralLayout.swift
//  SwiftUI101
//
//  Created by 井本　智博 on 2025/09/28.
//


import SwiftUI


struct SpiralView: View {
    var body: some View {
        SpiralLayout(radialPerTurn: 40, angleStepDeg: 15) {
            ForEach(0...120, id: \.self) { _ in
                Circle()
                    .frame(width: 20, height: 20)
            }
        }
    }
}

/// 螺旋状に subviews を配置する Layout
struct SpiralLayout: Layout {
    /// 1周あたり半径をどれだけ増やすか（ポイント）
    var radialPerTurn: CGFloat = 160
    /// 角度の増分（度）。小さいほど密、⼤きいほど粗く配置される
    var angleStepDeg: CGFloat = 12
    /// 螺旋の開始半径
    var startRadius: CGFloat = 0
    /// 時計回りにするか
    var clockwise: Bool = true

    // 必須: コンテナの推奨サイズ（ここでは簡易に高さは最大 subview、高さを返す）
    func sizeThatFits(
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) -> CGSize {
        // 螺旋は親の bounds に合わせて置く想定なので、提案サイズをそのまま返すのが手軽
        // （実運用では subview 計測から必要サイズを見積もる設計も可）
        CGSize(width: proposal.width ?? 300, height: proposal.height ?? 300)
    }

    // 必須: 実際の配置
    func placeSubviews(
        in bounds: CGRect,
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) {
        guard !subviews.isEmpty else { return }

        let center = CGPoint(x: bounds.midX, y: bounds.midY)
        let angleStep = angleStepDeg * .pi / 180
        let sign: CGFloat = clockwise ? 1 : -1
        // r = a + bθ の b を「1周あたりの半径増分」から逆算
        let b = radialPerTurn / (2 * .pi)

        var theta: CGFloat = 0

        for subview in subviews {
            // 現在角度の半径
            let r = startRadius + b * theta
            // “12時方向” を基準に回す（上方向を 0 度）
            let angle = sign * theta
            // 12時基準: (x, y) = (r * sinθ, -r * cosθ)
            var point = CGPoint(x: r * sin(angle), y: -r * cos(angle))
            point.x += center.x
            point.y += center.y

            // subview の推奨サイズ（未指定でOK。必要なら固定提案も可）
            let size = subview.sizeThatFits(.unspecified)
            subview.place(at: point, anchor: .center, proposal: ProposedViewSize(size))

            // 角度を進める → 半径も自然に増える
            theta += angleStep
        }
    }
}

#Preview {
    SpiralView()
}
