//
//  026View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/15
//  
//

import SwiftUI

struct _26View: View {
    private let pokemons: [String] = [ "Bulbasaur", "Charmander", "Squirtle"]
    @State private var showAlert: Bool = false

    var body: some View {
        List {
            ForEach(pokemons, id: \.self) {
                Text("\($0)")
            }
            .onTapGesture {
                showAlert = true
            }
        }
        .alert("タイトル", isPresented: $showAlert, actions: {
            Button(role: .destructive, action: {}, label: {Text("削除")})
            Button(role: .cancel, action: {}, label: {Text("キャンセル")})
        })
    }
}

#Preview {
    _26View()
}
