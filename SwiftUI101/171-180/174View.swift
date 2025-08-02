//
//  174View.swift
//  SwiftUI101
//
//  Created by tomo on 2025/07/25
//
//

import SwiftUI

struct _174View: View {
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            List {
                Text("Item 1")
                Text("Item 2")
            }
            .navigationTitle("Search Example")
        }
        .searchable(text: $searchText, prompt: "Search here...")
        .searchSuggestions {
            // テキストを選択した時に指定した文字列を検索Fieldの入れれる
            Text("Apple")
                .searchCompletion("Apple Park")
            Text("Banana")
                .searchCompletion("Banana Man")
        }
    }
}

#Preview {
    _174View()
}
