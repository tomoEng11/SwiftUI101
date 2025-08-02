//
//  173View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/24
//  
//

import SwiftUI

struct _173View: View {
    let locations = ["Tokyo", "Osaka", "Kyoto", "Nagoya", "Fukuoka", "Oita"]
    @State private var locationSearch = ""
    @State private var searchResult: [String] = []
    @State private var destination = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    Circle()
                        .frame(width: 100)
                        .foregroundStyle(.orange)
                }
                Text(destination)
            }
            .navigationTitle("Location Search")

        }
        .searchable(text: $locationSearch)
        .searchSuggestions {
            if !searchResult.isEmpty {
                ForEach(searchResult, id: \.self) {
                    name in
                    VStack {
                        Image(systemName: "swift")
                        Button(action: {
                            destination = name
                            locationSearch = ""
                            hideKeyboard()
                        }, label: {
                            Text("Destination:\(name)")
                        })
                    }
                }
            }
        }
        .onChange(of: locationSearch, { _, newValue in
            searchResult = locations.filter { name in
                name.hasPrefix(newValue)
            }
        })
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#Preview {
    _173View()
}
