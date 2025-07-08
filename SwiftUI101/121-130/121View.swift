//
//  121View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/29
//  
//

import SwiftUI

struct _121View: View {
    var body: some View {
        DisclosureGroup(
            content: {
                Text("Pro camera systemOur most advanced 48MP Fusion camera 5x Telephoto camera 48MP Ultra Wide camera Visual intelligence, to learn about your surroundings11")
            },
            label: {
                Label("More Info", systemImage: "sunrise.fill").bold()
            })

        HStack {
        }
        .bold()
        .kerning(10)
    }
}

#Preview {
    _121View()
}
