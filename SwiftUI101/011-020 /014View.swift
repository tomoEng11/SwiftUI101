//
//  014View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/08
//  
//

import SwiftUI

struct _14View: View {
    @State private var showAlert = false
    var body: some View {
        VStack {
            Button(action: {
                showAlert = true
            }, label: {Text("タップ")})
        }
        // NOTE alertはactionsにボタン、messageにメッセージを書く
        .alert("タイトル", isPresented: $showAlert, actions:  {
            Button(role: .destructive, action: {print("やばい")}, label: {
                Text("やばい")
            })
            Button(role: .cancel, action: {print("キャンセル")}, label: {
                Text("キャンセル")
            })
        }, message: {
            Text("メッセージ")
        })
    }
}

#Preview {
    _14View()
}
