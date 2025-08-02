//
//  133View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/09
//  
//

import SwiftUI

struct _133View: View {
    var body: some View {
        List {
            Label("共有", systemImage: "square.and.arrow.up")
                .listItemTint(.red)

            Label("編集", systemImage: "pencil.circle")
                .labelStyle(.titleAndIcon)

            Label("編集", systemImage: "pencil.circle")
                .labelStyle(.iconOnly)
        }
    }
}

#Preview {
    _133View()
}
