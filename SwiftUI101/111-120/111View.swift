//
//  111View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/26
//  
//

import SwiftUI

struct _111View: View {
    let colors: [Color] = [.red, .blue, .green, .yellow, .purple]

    // ScrollView(.horizontal)の表示領域がCRFの大きさの基準になる
    var body: some View {
        ScrollView {
            ForEach(1..<6) { count in
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(colors, id: \.self) { color in
                            Rectangle()
                                .frame(height: 100)
                                .containerRelativeFrame(.horizontal, count: count, spacing: 10)
                                .foregroundStyle(color)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    _111View()
}
