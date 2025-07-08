//
//  013View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/08
//  
//

import SwiftUI

struct _13View: View {
    var body: some View {
        List {
            Section("和食") {
                Text("ラーメン")
                Text("カレー")
                Text("寿司")
            }

            Section("洋食") {
                Text("パスタ")
                Text("グラタン")
                Text("ピザ")
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    _13View()
}
