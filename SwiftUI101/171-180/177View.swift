//
//  177View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/26
//  
//

import SwiftUI

struct _177View: View {
    @State private var fruits = ""

    var body: some View {
        Picker("Picker", selection: $fruits, content: {
            Text("Banana")
                .tag("Banana")
            Text("Apple")
                .tag("Apple")
            Text("Orange")
                .tag("Orange")
        })
        .pickerStyle(.segmented)
        .onChange(of: fruits,  { _, newValue in
            print("現在は\(newValue)が選択されてます")

        })
    }
}

#Preview {
    _177View()
}


