//
//  028View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/17
//  
//

import SwiftUI

struct _28View: View {

    let items: [String] = ["A", "B", "C"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(items, id: \.self) { text in
                    NavigationLink("\(text)", value: text)
                }
            }
            .navigationDestination(for: String.self, destination: {
                _28ChildView(text: $0)
            })
        }
    }
}

struct _28ChildView: View {
    let text: String
    var body: some View {
        Text(text)
    }
}

#Preview {
    _28View()
}
