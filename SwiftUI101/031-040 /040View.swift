//
//  040View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/21
//  
//

import SwiftUI

//struct _40View: View {
//
//    var body: some View {
//        Link("Hello", destination: URL(string: "https://apple.com")!)
//    }
//
//}


struct _40View: View {
    @State private var text = AttributedString()

    var body: some View {
        Text(text)
            .onAppear {
                text = makeAttributedUrl()
            }
    }

    func makeAttributedUrl() -> AttributedString {
        var text = AttributedString("Hello, https://apple.com")
        if let range = text.range(of: "https://apple.com") {
            text[range].link = URL(string: "https://apple.com")
            text[range].foregroundColor = .blue   // 見た目でリンクっぽく
            text[range].underlineStyle = .single // 下線も付けるとより明示的
        }
        return text
    }
}
#Preview {
    _40View()
}
