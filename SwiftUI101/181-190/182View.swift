//
//  182View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/31
//  
//

import SwiftUI

struct _182View: View {
    @State private var value = 0.5
    var body: some View {
        VStack {
            Slider(value: $value, label: {}, minimumValueLabel: {
                Image(systemName: "tortoise")
            }, maximumValueLabel: {
                Image(systemName: "hare")
            })
            .foregroundStyle(.green)
        }
        .font(.title)
    }
}

#Preview {
    _182View()
}
