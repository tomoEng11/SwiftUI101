//
//  144View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/14
//  
//

import SwiftUI

struct _144View: View {
    var body: some View {
        Menu("メニュー", content: {
            Button(action: {}, label: {
                Label("Baseball", systemImage: "baseball")
            })

            Button(action: {}, label: {
                Label("Soccer", systemImage: "soccerball")
            })
        })

        Menu("メニュー", content: {
            // ControlGroupでMenu内のComponentを横方向に並べられる
            ControlGroup {
                Button(action: {}, label: {
                    Label("Baseball", systemImage: "baseball")
                })

                Button(action: {}, label: {
                    Label("Soccer", systemImage: "soccerball")
                })
            }
        })
    }
}

#Preview {
    _144View()
}
