//
//  Isolation.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/26
//  
//

import Foundation
import Playgrounds


#Playground("parameter isolation") {

    protocol Account: Actor {
        var point: Int { get set }
    }

    actor StandardAccount: Account {
        var point: Int = 0
    }

    actor GoldAccount: Account {
        var point: Int = 0
    }

    struct AddPoint {
        static func execute(to account: isolated Account, value: Int) {
            account.point = value
        }
    }

    var tomo = StandardAccount()

    await AddPoint.execute(to: tomo, value: 10)

    let result = await tomo.point
}

#Playground("jj") {
    @MainActor
    protocol ChatService {
        func send(_ message: String)
    }

    struct MyChat: ChatService {
        // 自動的に MainActor 隔離
        func send(_ message: String) {
            print(message)
        }
    }

    

}


