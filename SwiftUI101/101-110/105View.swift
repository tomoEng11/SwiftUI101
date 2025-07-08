//
//  105View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/23
//  
//

import SwiftUI

struct _105View: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                ForEach(0..<20) { i in
                    FadingCell(index: i)
                        .frame(height: 100)
                }
            }
            .padding()
        }
        .coordinateSpace(name: "scroll")
    }
}

struct FadingCell: View {
    let index: Int

    var body: some View {
        GeometryReader { geo in
            let y = geo.frame(in: .named("scroll")).minY // ← カスタム空間でのy位置

            Text("Item \(index)")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.blue.opacity(0.7))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .opacity(opacityFor(y: y))
                .scaleEffect(scaleFor(y: y))
                .animation(.easeOut(duration: 0.3), value: y)
        }
        .frame(height: 100)
    }

    func opacityFor(y: CGFloat) -> Double {
        let threshold: CGFloat = 200
        if y < threshold {
            return Double(y / threshold)
        }
        return 1
    }

    func scaleFor(y: CGFloat) -> CGFloat {
        let threshold: CGFloat = 200
        if y < threshold {
            return 0.8 + 0.2 * (y / threshold)
        }
        return 1
    }
}

#Preview {
    _105View()
}
