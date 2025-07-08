//
//  008View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/07
//  
//

import SwiftUI

struct _08View: View {
    var body: some View {
        TabView {
            Tab {
                VStack {
                    Text("Home")
                    Button(action: {}, label: {Text("Tap")})
                }
            } label: {
                Label("Home", systemImage: "house")

            }

            Tab("Swift", systemImage: "swift") {
                Text("Swift!")
            }
            .badge(10)
        }
        .tint(.yellow)
    }
}

#Preview {
    _08View()
}
