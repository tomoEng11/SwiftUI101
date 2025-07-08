//
//  127View.swift
//  SwiftUI101
//
//  Created by tomo on 2025/06/30
//
//

import SwiftUI

struct _127View: View {
    var body: some View {
        List {
            Text("127View")
                .listRowBackground(Color.blue)

            // SectionにBackgroundを指定した場合は、
            // 各Rowにbackgroundを繰り返し適用することになる
            Section {
                Button("Push") {

                }

                Text("blah")
            } header: {
                Text("Section Header")
            }
            .listRowBackground(Color.green)
        }
    }
}

#Preview {
    _127View()
}
