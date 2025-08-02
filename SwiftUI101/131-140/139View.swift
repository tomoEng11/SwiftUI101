//
//  139View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/11
//  
//

import SwiftUI

struct _139View: View {
    var body: some View {
        List {
            Text("Apple")
                .listRowSeparator(.visible, edges: .top)
            Text("Apple")
            // 上下の線が消える
            Text("Apple")
                .listRowSeparator(.hidden)


            Section {
                Text("Apple")
                Text("Apple")
                Text("Apple")
                Text("Apple")
            } header: {
                Text("Fruits")
            }
            .listRowSeparator(.hidden)

        }
    }
}

#Preview {
    _139View()
}
