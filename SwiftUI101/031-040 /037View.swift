//
//  037View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/20
//  
//

import SwiftUI

struct _37View: View {
    var body: some View {
        TabView {
            Text("First Tab")
            Text("Second Tab")
            Text("Third Tab")
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    _37View()
}
