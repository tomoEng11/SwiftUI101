//
//  104View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/23
//  
//

import SwiftUI

struct _104View: View {
    var body: some View {
        VStack {
            Circle()
                .frame(width: 100, height: 100)

            GeometryReader { geo in
                VStack {
                    // origin(左上のこと)
                    Text("\(geo.frame(in: .global).origin.x)")
                    Text("\(geo.frame(in: .global).origin.y)")
                }
            }
            .foregroundStyle(.white)
            .background(.pink)

            GeometryReader { geo in
                VStack {
                    Text("\(geo.frame(in: .local).origin.x)")
                    Text("\(geo.frame(in: .local).origin.y)")
                }

            }
            .foregroundStyle(.white)
            .background(.pink)
        }
    }
}

#Preview {
    _104View()
}
