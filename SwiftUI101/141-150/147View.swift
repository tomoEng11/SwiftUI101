//
//  147View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/14
//  
//

import SwiftUI

struct _147View: View {
    var body: some View {
        Menu("天気", content: {
            Button(action: {}, label: { Label("晴れ", systemImage: "sun.min") })

            Button(action: {}, label: { Label("夕暮れ", systemImage: "sun.and.horizon.circle.fill") })
            Divider()
            Button(action: {}, label: {
                Label("Internet", systemImage: "globe.badge.chevron.backward")

            })

            Section {
                Button(action: {}, label: {
                    Label("Swift", systemImage: "swift")

                })
            }
        })
    }
}

#Preview {
    _147View()
}
