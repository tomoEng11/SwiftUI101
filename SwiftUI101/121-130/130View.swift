//
//  130View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/08
//  
//

import SwiftUI

struct _130View: View {
    @State private var progress: Float = 0.25
    private let minValue: Float = 0
    private let maxValue: Float = 100
    var body: some View {
        ScrollView {
            LazyVStack {
                // valueは、1以上だとrun-time warningになる
                Gauge(value: progress, label: { Text("") })

                Gauge(value: progress, in: minValue...maxValue, label: { Text("")} )

                Gauge(value: progress) {
                    Text("")
                } currentValueLabel: {
                    Text(progress, format: .number)
                } minimumValueLabel: {
                    Text("\(minValue)")
                        .foregroundStyle(.red)
                } maximumValueLabel: {
                    Text("\(maxValue)")
                }
                // Labelには適用されない
                .tint(.orange)
                // Labelに適用される
                .foregroundStyle(.blue)
            }
        }
    }
}

#Preview {
    _130View()
}

