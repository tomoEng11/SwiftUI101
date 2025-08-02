//
//  171View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/24
//  
//

import SwiftUI

struct _171View: View {
    private let colors: [Color] = [.pink, .blue, .orange, .green]

    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(colors, id: \.self) { color in
                    Text("Hello, world.")
                        .containerRelativeFrame([.vertical, .horizontal])
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .background(color)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
    }
}

#Preview {
    _171View()
}
