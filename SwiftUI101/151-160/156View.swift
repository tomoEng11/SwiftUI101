//
//  156View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/23
//  
//

import SwiftUI

struct _156View: View {
    let items = [Color.red, Color.blue, Color.green, Color.yellow, Color.purple]
    
    var body: some View {
        ScrollView {
            ScrollView(.horizontal) {
                LazyHStack(spacing: 24) {
                    ForEach(items, id: \.self) { color in
                        RoundedRectangle(cornerRadius: 10)
                            .containerRelativeFrame(.horizontal)
                            .frame(height: 200)
                            .foregroundStyle(color)
                    }
                }
            }
            .safeAreaInset(edge: .leading, content: {
                VStack(spacing: 16) {
                    Text("Scroll")
                        .font(.body)
                    Image(systemName: "arrow.left.circle")
                }
                .padding(.horizontal)
                .frame(maxHeight: .infinity)
                .background(.thinMaterial)
            })
        }
    }
}

#Preview {
    _156View()
}
