//
//  158View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/24
//  
//

import SwiftUI

struct _158View: View {
    let colors = [Color.red, Color.green, Color.blue, Color.yellow, Color.purple, Color.orange, Color.cyan, Color.teal, Color.brown]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(colors, id: \.self) { color in
                    Rectangle()
                        .fill(color)
                        .frame(width: 120, height: 120)
                }
            }
            .scrollTargetLayout()
        }
        // 画面幅を1ページとして、ページ単位でスクロールする
        .scrollTargetBehavior(.paging)

    }
}

struct _158aView: View {
    let colors = [Color.red, Color.green, Color.blue, Color.yellow, Color.purple, Color.orange, Color.cyan, Color.teal, Color.brown]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(colors, id: \.self) { color in
                    Rectangle()
                        .fill(color)
                        .frame(width: 120, height: 120)
                }
            }
            .scrollTargetLayout()
        }

        // TargetとなるView単位でスクロールが停止する
        .scrollTargetBehavior(.viewAligned)

    }
}



#Preview {
    _158View()
}

#Preview("ViewAligned") {
    _158aView()
}
