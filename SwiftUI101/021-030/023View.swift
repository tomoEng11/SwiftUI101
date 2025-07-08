//
//  023View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/14
//  
//

import SwiftUI

struct _23View: View {
    var body: some View {
        VStack(spacing: 30) {
            _23CardView(color: .green, cornerRadius: 10) {
                Text("Hello, World!")
                    .foregroundStyle(.black)
            }

            _23CardView(color: .blue, cornerRadius: 10) {
                Text("Hello, World!")
                    .foregroundStyle(.black)
            }
        }
    }
}

struct _23CardView<Content>: View where Content: View {

    let color: Color
    let cornerRadius: CGFloat
    let content: () -> Content

    var body: some View {
        content()
            .padding()
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .foregroundStyle(.white)
                .shadow(color: color, radius: cornerRadius, x: 4, y: 4))
    }
}
#Preview {
    _23View()
}
