//
//  157View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/24
//  
//

import SwiftUI

struct _157View: View {
    var body: some View {
        ScrollView {
            Circle()
        }
        // ScrollView内のコンテンツが画面に収まるときは
        // bounceしない
        .scrollBounceBehavior(.basedOnSize)
    }
}

// TODO:
#Preview {
    _157View()
}
