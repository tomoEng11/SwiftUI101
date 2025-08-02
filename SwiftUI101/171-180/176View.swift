//
//  176View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/26
//  
//

import SwiftUI

struct _176View: View {
    let members = ["maki", "tomo", "sako", "jonny", "chamada", "kai"]

    @State private var filteredNames: [String] = []
    @State private var search = ""


    var body: some View {
        NavigationStack {
            List(search.isEmpty ? members : filteredNames, id: \.self) { name in
                Text(name)
            }
        }
        .searchable(text: $search,placement: .navigationBarDrawer(displayMode: .always) ,prompt: "Type")
        .onChange(of: search, { _, newValue in
            filteredNames = members.filter { name in
                name.hasPrefix(search)
            }
        })

    }
}

#Preview {
    _176View()
}
