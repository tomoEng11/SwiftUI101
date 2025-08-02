//
//  175View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/26
//  
//

import SwiftUI

struct _175View: View {
    @State private var text = ""
    var body: some View {
        NavigationStack {
            _175ChildView()
        }
        .searchable(text: $text)
    }
}

struct _175ChildView: View {

    @Environment(\.dismissSearch) var dismissSearch
    @Environment(\.isSearching) var isSearching
    var body: some View {
        VStack {
            if isSearching {
                Button("Dismiss Search Bar") {
                    dismissSearch()
                }
            } else {
                Text("検索をしてみよう")
            }
        }
    }
}

#Preview {
    _175View()
}
