//
//  131View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/08
//  
//

import SwiftUI

struct _131View: View {
    @State private var text = ""
    var body: some View {
        GroupBox {
            TextField("Placeholder", text: $text)
                .textFieldStyle(.roundedBorder)

            TextField("Placeholder", text: $text)
                .textFieldStyle(.roundedBorder)
        }
    }
}

#Preview {
    _131View()
}
