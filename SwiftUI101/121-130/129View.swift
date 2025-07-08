//
//  129View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/08
//  
//

import SwiftUI

struct _129View: View {
    // 値は0-1の範囲で指定する
    @State private var progress: Double = 0.25
    var body: some View {
        ScrollView {
            LazyVStack {
                Group {
                    Gauge(value: progress, label: {
                        Text("Default")
                    })

                    Gauge(value: progress, label: {
                        Text("Default")
                    })
                    .gaugeStyle(.linearCapacity)

                    Gauge(value: progress, label: {
                        Text("accessoryLinear")
                    })
                    .gaugeStyle(.accessoryLinear)
                    .tint(.cyan)

                    Gauge(value: progress, label: {
                        Text("accessoryLinear")
                    })
                    .gaugeStyle(.accessoryLinearCapacity)

                }

                Group {
                    Gauge(value: progress, label: {
                        Text("accessoryCircular")
                    })
                    .gaugeStyle(.accessoryCircular)


                    Gauge(value: progress, label: {
                        Text("accessoryCircular")
                    })
                    .gaugeStyle(.accessoryCircularCapacity)
                }
                .tint(.green)
            }
            .padding()
        }
    }
}

#Preview {
    _129View()
}
