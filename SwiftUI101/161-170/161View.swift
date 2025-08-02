//
//  161View.swift
//  SwiftUI101
//
//  Created by tomo on 2025/07/22
//
//

import SwiftUI

struct _161View: View {

    var body: some View {
        // TODO 色がblendされるのは回避できるのか？
        NavigationStack {
            VStack {
                Text("NavigationStack")
            }
            .containerRelativeFrame([.horizontal, .vertical])
            .background(.blue)
            .navigationTitle("Title")
            .toolbarBackground(Color.green, for: .navigationBar)
            .toolbarBackgroundVisibility(.visible, for: .navigationBar)
        }
    }
} 

#Preview {
    _161View()
}
