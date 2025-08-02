//
//  181View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/31
//  
//

import SwiftUI

struct _181View: View {
    @State private var value = 0.5
    var body: some View {
        VStack {
            Slider(value: $value, in: 0...1)
                .tint(.green)

            Slider(value: $value, in: 0...1)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
        }
    }
}

#Preview {
    _181View()
}
