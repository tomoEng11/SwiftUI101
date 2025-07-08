//
//  010View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/07
//  
//

import SwiftUI

struct _10View: View {
    var body: some View {
        List {
            Section("iOS") {
                Text("Swift")
                Text("SwiftUI")

            }

            Section("Android") {
                Text("Kotlin")
                Text("Jetpack Compose")
            }
        }
    }
}

#Preview {
    _10View()
}
