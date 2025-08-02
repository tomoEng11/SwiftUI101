//
//  153View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/23
//  
//

import SwiftUI

struct _53View: View {
    @State private var value = 0.75
    var body: some View {
        VStack {
            ProgressView(value: value, label: {
                Text("Label")
                    .font(.largeTitle)
            }, currentValueLabel: {
                Text("現在の値：\(value)")
            })
            .tint(.purple)

            ProgressView(value: value)
                .progressViewStyle(.linear)
                .tint(.green)

            ProgressView(value: value)
                .progressViewStyle(.circular)

            ProgressView()
                .tint(.orange)

        }
    }
}

#Preview {
    _53View()
}
