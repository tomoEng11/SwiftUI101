//
//  179View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/29
//  
//

import SwiftUI

struct _179View: View {
    var body: some View {
        Text("")
    }
}

#Preview {
    _179View()
}


//@MainActor
//protocol ChatService {
//    func send(_ message: String)
//}
//
//struct MyChat: ChatService {
//    // 自動的に MainActor 隔離
//    func send(_ message: String) {
//        print(message)
//    }
//}

@MainActor
protocol ChatService {
    func send(_ message: String)
}

struct MyChat: @preconcurrency ChatService {
    // 本来なら MainActor 隔離を継承すべき
    func send(_ message: String) {
        print(message)
    }
}

@MainActor
func performChat<C: ChatService>(_ service: C) {
    service.send("Hello!") // ❌ Swift6 ではエラー
}


