//
//  166View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/22
//  
//

import SwiftUI

struct _166View: View {
    var body: some View {
        LabeledContent {
            Text("🔒 ログインが必要です")
        } label: {
            Text("セキュリティ")
                .fontWeight(.bold)
        }
    }
}

#Preview {
    _166View()
}
