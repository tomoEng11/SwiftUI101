//
//  107View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/23
//  
//

import SwiftUI

struct _107View: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 350, height: 200)
                .foregroundStyle(.teal.opacity(0.5))
            // GeometryReaderは可能な限り広がる
            // RoundedRectangleの大きさと一致するとは限らない
            GeometryReader { geo in
                Group {
                    Text("minX")
                        .position(x: geo.frame(in: .local).minX + 10)
                    Text("midX")
                        .position(x: geo.frame(in: .local).midX)
                    Text("maxX")
                        .position(x: geo.frame(in: .local).maxX - 10)

                    Text("minY")
                        .position(x: geo.frame(in: .local).minX + 10, y: geo.frame(in: .local).minY + 20)
                    Text("midY")
                        .position(x: geo.frame(in: .local).minX + 10, y: geo.frame(in: .local).midY)
                    Text("maxY")
                        .position(x: geo.frame(in: .local).minX + 10, y: geo.frame(in: .local).maxY - 10)

                }
                .font(.headline)
                .fontWeight(.bold)

            }
            .background(.pink.opacity(0.7))
        }
        .padding()
    }
}

#Preview {
    _107View()
}
