//
//  025View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/15
//  
//

import SwiftUI

struct _25View: View {
    @State private var locations = ["London", "New York", "Tokyo"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(locations, id: \.self) {
                    Text("\($0)")
                }
                .onDelete { indexSet in
                    deleteItem(indexSet)
                }
                
            }
            .toolbar {
                EditButton()
            }
        }
    }

    func deleteItem(_ index: IndexSet) {
        locations.remove(atOffsets: index)
    }
}

#Preview {
    _25View()
}
