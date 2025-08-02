//
//  183View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/31
//  
//

import SwiftUI

struct _183View: View {
    @State private var value = 0.7
    @State private var ratingValue = 3
    var body: some View {
        VStack {
            Stepper("Step", value: $value)
            Stepper(value: $value, label: {
                Text("value: \(value)")
            })

            Stepper(value: $ratingValue, in: 1...5, label: {
                HStack {
                    ForEach(1...ratingValue, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                    }
                }
            })
        }
    }
}

#Preview {
    _183View()
}
