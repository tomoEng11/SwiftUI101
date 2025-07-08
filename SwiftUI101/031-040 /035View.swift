//
//  035View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/20
//  
//

import SwiftUI

struct _35View: View {

    let columns: [GridItem] = Array(repeating: GridItem(.fixed(100)), count: 3)
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<10) { item in
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.blue.opacity(0.5))
                        .frame(height: 150)
                }
            }
        }
    }
}

#Preview {
    _35View()
}
