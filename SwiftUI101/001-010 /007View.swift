//
//  007View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/07
//  
//

import SwiftUI

struct _07View: View {
    var pokes = ["Pikachu", "Charizard", "Jigglypuff"]
    @State private var selectedPoke: Int = 0


    var body: some View {
        Picker("PokePick", selection: $selectedPoke) {
            ForEach(pokes.indices, id: \.self) {
                Text(pokes[$0]).tag($0)
            }
        }
        .pickerStyle(.wheel)
    }
}

#Preview {
    _07View()
}
