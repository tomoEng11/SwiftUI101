//
//  115View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/27
//  
//

import SwiftUI

struct _115View: View {
    var body: some View {
        ContentUnavailableView(
            label: {
                Text("これがtitle")
//                Label("Title", systemImage: "swift")

            },
            description: {
                Text("description")
//                Label("Description", systemImage: "swift")
            },
            actions: {
                HStack {
                    Button(role: .cancel, action: {}, label: {Label("Cancle", systemImage: "xmark")})
                    Button(role: .destructive, action: {}, label: {Label("Delete", systemImage: "trash")})
                }
        })
    }
}

#Preview {
    _115View()
}
