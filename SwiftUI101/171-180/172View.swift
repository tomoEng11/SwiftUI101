//
//  172View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/24
//  
//

import SwiftUI

struct _172View: View {
    let colors = [Color.red, Color.green, Color.blue, Color.yellow, Color.purple, Color.orange, Color.cyan, Color.teal, Color.brown]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(colors, id: \.self) { color in
                    Rectangle()
                        .fill(color)
                        .containerRelativeFrame(.horizontal)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .contentMargins(.vertical, 100)
//        .contentMargins(100, for: .scrollIndicators)
//        .contentMargins(.bottom, 500, for: .scrollIndicators)
    }
}

#Preview {
    _172View()
}
