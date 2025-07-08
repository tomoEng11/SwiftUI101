//
//  116View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/27
//  
//

import SwiftUI

struct _116View: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                Text("Hello World")

                Text("Hello World")
                    .bold()

                Text("Hello World")
                    .italic()

                Text("Hello World")
                    .strikethrough()

                Text("Hello World")
                    .underline()

                Text("Hello World")
                    .kerning(10)

                Text("Hello World")
                    .tracking(10)

                Text("Hello World")
                    .baselineOffset(10)
            }
        }
    }
}

#Preview {
    _116View()
}
