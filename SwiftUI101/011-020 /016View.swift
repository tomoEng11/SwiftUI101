//
//  016View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/08
//  
//

import SwiftUI

struct _16View: View {
    var body: some View {
        VStack {
            Text("Hello")
                .frame(width: 100, height: 100)
                .background(.primary)
                .frame(width: 200, height: 200)
                .background(.secondary)
                .frame(width: 300, height: 300)
                .background(.quaternary)
                .background(.secondary)
                .frame(width: 400, height: 400)
                .background(.quinary)

        }
    }
}

#Preview {
    _16View()
}
