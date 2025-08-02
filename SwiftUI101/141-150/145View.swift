//
//  145View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/14
//  
//

import SwiftUI

struct _145View: View {
    var body: some View {
        // Menuを入れ子にするとまとめられる
        Menu(content: {
            Button(action: {}, label: {
                Label("Fine", systemImage: "sun.min")
            })
            Menu("More", content: {
                Button(action: {}, label: {
                    Label("Bolt", systemImage: "cloud.bolt.rain")
                })

                Button(action: {}, label: {
                    Label("Rain", systemImage: "cloud.heavyrain")
                })

            })
        }, label: {
            Label("Weather", systemImage: "moon.stars")
        })
    }
}

#Preview {
    _145View()
}
