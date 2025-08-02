//
//  151View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/23
//  
//

import SwiftUI

struct _151View: View {
    var body: some View {
        VStack {
            ProgressView()

            ProgressView("ログイン処理中")
        }
    }
}

#Preview {
    _151View()
}
