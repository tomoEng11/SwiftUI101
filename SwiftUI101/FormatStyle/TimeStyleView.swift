//
//  TimeStyleView.swift
//  SwiftUI101
//
//  Created by 井本　智博 on 2025/10/05.
//

import SwiftUI
import Playgrounds

struct TimeStyleView: View {
    let date = Date()
    var body: some View {
        Text("現在時刻")
        Text(date, format: Date.FormatStyle.dateTime)
    }
}


//class Animal {
//    var name: String
//    
//    init(name: String) {
//        self.name = name
//    }
//}
//
//// この関数の実行にそのクロージャーにSendableしか渡せない
//func test(completion:@escaping @Sendable(String) -> Void) {
//    var animal = Animal(name: "猫")
//    Task {
//        completion(animal.name)
//    }
//}
//
//func test1() {
//    var animal = Animal(name: "猫")
//    test {_ in
//        print(animal.name)
//    }
//}

//
//#Preview {
//    TimeStyleView()
//}


//
//    func a1() async -> String {
//        await withCheckedContinuation { continuation in
//            a { result in
//                continuation.resume(returning: result)
//            }
//        }
//    }

//#Playground {
//
//    
//    class Animal {
//        var name: String
//        
//        init(name: String) {
//            self.name = name
//        }
//    }
//    
//    // @Sendableは可変状態を許さない
//    func a(completion: @escaping (String) -> Void) {
////        var animal = Animal(name: "DOG")
////        completion(animal.name)
//    }
//    
//    
//    Task {
//        do {
//            a { txt in
//                print(animal.name)
//            }
//        }
//    }
//
//    
//}
