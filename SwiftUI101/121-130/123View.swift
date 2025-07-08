//
//  123View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/29
//  
//

import SwiftUI

struct _123View: View {
    var body: some View {
        DisclosureGroup(
            content: {
                DisclosureGroup(
                    content: {
                        Label("Nested DisclosureGroup", systemImage: "house")
                    }, label: {
                        Text("Nested DisclosureGroup")
                    })
            },
            label: {
                Text("DisclosureGroup")
            })
    }
}

#Preview {
    _123View()
}
