//
//  102View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/22
//  
//

import SwiftUI

struct _102View: View {
    var body: some View {
        VStack {
            Circle().frame(width: 100, height: 100).foregroundStyle(.red)

            GeometryReader { geo in
                VStack {
                    Text("height: \(geo.size.height)")
                    Text("width: \(geo.size.width)")
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
            .background(.blue)
        }
    }
}

#Preview {
    _102View()
}
