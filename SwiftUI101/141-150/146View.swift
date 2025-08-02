//
//  146View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/14
//  
//

import SwiftUI

struct _146View: View {
    var body: some View {
        // 場所によって開き方とメニューの順番が変わる
        VStack {
            HStack {
                Menu("Weather", content: {
                    Button(action: {}, label: {
                        Label("Bolt", systemImage: "cloud.bolt.rain")
                    })

                    Button(action: {}, label: {
                        Label("Rain", systemImage: "cloud.heavyrain")
                    })
                    .tint(.orange)

                })
                // これつけると順番を固定できる
                .menuOrder(.fixed)
                Spacer()
            }
            Spacer()

            Menu("Weather", content: {
                Button(action: {}, label: {
                    Label("Bolt", systemImage: "cloud.bolt.rain")
                })

                Button(action: {}, label: {
                    Label("Rain", systemImage: "cloud.heavyrain")
                })

            })
            // これつけると順番を固定できる
            .menuOrder(.fixed)

        }
    }
}

#Preview {
    _146View()
}
