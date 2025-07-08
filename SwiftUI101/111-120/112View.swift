//
//  112View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/27
//  
//

import SwiftUI

struct _112View: View {
    var body: some View {
        VStack {
            ControlGroup {
                Button("Home", action: {})
                Button("Settings", action: {})
            }

            ControlGroup {
                Button(action: {}, label: {Image(systemName: "swift")})
                Button(action: {}, label: {Image(systemName: "swift")})
            }
            .controlGroupStyle(.navigation)
        }
    }
}

#Preview {
    _112View()
}
