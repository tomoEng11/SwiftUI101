//
//  126View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/30
//  
//

import SwiftUI

struct _126View: View {
    var body: some View {
        Form {
            Section {
                Text("Hello")
            } header: {
                Label("MacOS", systemImage: "swift")
            }

            // デフォルトでmarginがあり、無くすのは難しい
            Section {
                Color.red
            }
        }
    }
}

#Preview {
    _126View()
}
