//
//  MyEqualWidthHStack.swift
//  SwiftUI101
//
//  Created by 井本　智博 on 2025/09/28.
//

import SwiftUI
import Playgrounds

struct MyEqualWidthHStack: Layout {
    
    /// レイアウトコンテナがサブビューを表示するのに必要なサイズを返却する
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout Void) -> CGSize {
        guard !subviews.isEmpty else { return .zero }

        // サブビュー内の最大サイズ
        let maxSize = maxSize(subviews: subviews)
        // サブビュー間のスペース
        let spacing = spacing(subviews: subviews)
        let totalSpacing = spacing.reduce(0) { $0 + $1 }

        return CGSize(width: maxSize.width * CGFloat(subviews.count) + totalSpacing, height: maxSize.height)
    }

    /// サブビューをコンテナに配置する
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout Void) {
        guard !subviews.isEmpty else { return }

        // サブビュー内の最大サイズ
        let maxSize = maxSize(subviews: subviews)
        // サブビュー間のスペース
        let spacing = spacing(subviews: subviews)

        let placementProposal = ProposedViewSize(width: maxSize.width, height: maxSize.height)
        var nextX = bounds.minX + maxSize.width / 2

        for index in subviews.indices {
            subviews[index].place(at: CGPoint(x: nextX, y: bounds.midY),
                                  anchor: .center,
                                  proposal: placementProposal)
            // 次のサブビューのx座標：最大サイズの横幅 + スペース
            nextX += maxSize.width + spacing[index]
        }
    }

    /// サブビュー内の最大サイズを取得する
    private func maxSize(subviews: Subviews) -> CGSize {
        let subviewSizes = subviews.map { $0.sizeThatFits(.unspecified) }
        let maxSize: CGSize = subviewSizes.reduce(.zero) { currentMax, subviewSize in
            CGSize(width: max(currentMax.width, subviewSize.width),
                   height: max(currentMax.height, subviewSize.height))
        }

        return maxSize
    }

    /// サブビュー間のスペースの配列を取得する
    private func spacing(subviews: Subviews) -> [CGFloat] {
        subviews.indices.map { index in
            guard index < subviews.count - 1 else { return 0 }
            return subviews[index].spacing.distance(to: subviews[index + 1].spacing, along: .horizontal)
        }
    }
}

#Playground {
    let numArray = [1,2,3]
    let index = numArray.indices
}

struct SView: Layout {
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        .init()
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {

        subviews.forEach { subview in
            subview.place(
                at: bounds.origin,
                anchor: .leading,
                proposal: proposal,
            )
        }
    }
    
    
}
