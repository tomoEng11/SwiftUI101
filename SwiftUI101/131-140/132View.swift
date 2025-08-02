//
//  132View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/09
//  
//

import SwiftUI

struct _132View: View {
    @State private var isOn = false

    var body: some View {
        ZStack {
            Color.red.opacity(0.7)
                .ignoresSafeArea()
            GroupBox {
                Toggle(isOn: $isOn, label: { Text("Toggle")
                })
            }
            .backgroundStyle(.thinMaterial)

            GroupBox {
                Toggle(isOn: $isOn, label: { Text("Toggle") })
            }
            .backgroundStyle(.secondary)
        }
    }
}

#Preview {
    _132View()
}
