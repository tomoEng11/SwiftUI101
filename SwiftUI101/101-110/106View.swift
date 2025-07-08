//
//  106View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/23
//  
//

import SwiftUI

struct _106View: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("\(geo.frame(in: .named("circle")).minX)")
                Text("\(geo.frame(in: .named("circle")).minY)")
                Circle()
                    .frame(width: 100, height: 100)
                    .position(x: geo.frame(in: .named("circle")).minX)
            }
            .coordinateSpace(name: "circle")
        }
    }
}

#Preview {
    _106View()
}
