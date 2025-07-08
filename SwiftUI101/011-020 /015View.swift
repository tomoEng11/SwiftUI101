//
//  015View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/08
//  
//

import SwiftUI

struct _15View: View {
    @State private var showAlert1 = false
    @State private var showAlert2 = false

    var body: some View {
        VStack {
            Button("アラート1", action: {showAlert1 = true})
            Button("アラート2", action: {showAlert2 = true})

        }
        .alert("アラート1", isPresented: $showAlert1, actions: {
        }, message: {Text("アラート1メッセージ")})
        .alert("アラート2", isPresented: $showAlert2, actions: {
        }, message: {Text("アラート2メッセージ")})
    }
}

#Preview {
    _15View()
}
