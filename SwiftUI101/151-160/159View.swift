//
//  159View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/23
//  
//

import SwiftUI

struct _159View: View {
    var body: some View {
        ScrollView {
            Rectangle()
                .frame(width: 300, height: 400)
            List {
                ForEach(0..<20) { i in
                    Text("Item \(i)")
                }
            }
            .frame(height: 300)
        }
    }
}

#Preview {
    _159View()
}
