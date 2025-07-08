//
//  124View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/29
//  
//

import SwiftUI

struct _124View: View {
    var body: some View {
        Form {
            Section {
                Text("Hello")
            } header: {
                Text("iPhone")

            }
            .headerProminence(.increased)
            .foregroundStyle(.gray)
            .italic()

            Section {
                Text("Hello")
            } header: {
                Text("iPhone")
                    .headerProminence(.increased)
                    .foregroundStyle(.gray)
                    .italic()

            }
        }
    }
}

#Preview {
    _124View()
}
