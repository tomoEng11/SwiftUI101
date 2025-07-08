//
//  011View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/07
//  
//

import SwiftUI

struct _11View: View {
    let fruits = ["Apple", "Banana", "Orange", "Pineapple"]
    var body: some View {
        NavigationStack {
            List(fruits, id: \.self) { fruit in
                NavigationLink(destination: Text("Detail of \(fruit)")) {
                    Text(fruit)
                }
            }

        }
    }
}

#Preview {
    _11View()
}
