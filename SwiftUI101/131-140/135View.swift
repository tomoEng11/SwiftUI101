//
//  135View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/09
//  
//

import SwiftUI

struct _135View: View {
    var body: some View {
        List {
            //　List内でSFSymbolのみ色を変えるならlistItemTint
            Label("TTT", systemImage: "pencil.and.scribble")
        }
        // list全体の画像の色を変える
        .tint(.blue)

    }
}

#Preview {
    _135View()
}
