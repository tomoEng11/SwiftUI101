//
//  CollectionView.swift
//  SwiftUI101
//
//  Created by 井本　智博 on 2025/08/31.
//

import SwiftUI

struct CollectionView: View {
    let colors: [Color] = [.red, .blue, .green, .yellow, .orange, .pink]
    @State private var search = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(colors, id: \.self) { color in
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 180, height: 100)
                                .foregroundStyle(color)
                        }
                    }
                }
                .padding()
                
                LazyVStack {
                    ForEach(colors, id: \.self) { color in
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 350, height: 180)
                            .foregroundStyle(color)
                    }
                }
            }
            .navigationTitle("Collection")
//            .searchable(text: $search)
            .toolbar {
                ToolbarItem {
                    Image(systemName: "arrow.left")
                }
                
                ToolbarSpacer(.flexible)
                
                ToolbarItem {
                    Image(systemName: "plus")
                }
                
                ToolbarItem {
                    Image(systemName: "pencil")
                }
            }
        }
    }
}


#Preview {
    CollectionView()
}
