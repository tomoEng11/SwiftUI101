//
//  103View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/22
//  
//

import SwiftUI

struct _103View: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("height: \(geo.size.height)")
                Text("width: \(geo.size.width)")

//                Text("center")
//                    .position(x: geo.size.width / 2, y: geo.size.height / 2)
//                    .border(Color.yellow)

                Circle()
                    .frame(width: 100)
                // positionはcenterの位置を指定するもの
                    .position(x: geo.size.width / 2)
                    .border(Color.yellow)
            }
            .foregroundStyle(.white)
            .font(.largeTitle)
        }
        .background(Color.pink.opacity(0.6))
    }
}

#Preview {
    _103View()
}
