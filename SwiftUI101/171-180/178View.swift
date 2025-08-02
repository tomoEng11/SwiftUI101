//
//  178View.swift
//  SwiftUI101
//
//  Created by tomo on 2025/07/27
//
//

import SwiftUI

struct _178View: View {
    var body: some View {
        VStack {
            ShareLink(
                item: URL(string: "https://www.apple.com")!,
                subject: Text("タイトル"),
                message: Text("メッセージ"),
                preview: SharePreview("Preview", image: Image(systemName: "swift"), icon: Image(systemName: "xmark.circle"))
            )
        }
    }
}

#Preview {
    _178View()
}
