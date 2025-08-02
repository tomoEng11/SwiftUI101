//
//  137View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/11
//  
//

import SwiftUI

struct _137View: View {

    @State private var items = ["A", "B", "C"]

    var body: some View {
        List($items, id: \.self) { $item in
            TextField("TEXT", text: $item)
        }
    }
}

#Preview {
    _137View()
}
