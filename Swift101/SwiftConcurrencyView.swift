//
//  SwiftConcurrencyView.swift
//  SwiftUI101
//
//  Created by 井本　智博 on 2025/10/06.
//

import SwiftUI

struct SwiftConcurrencyView: View {
    var body: some View {
        Button("ボタン") {
            
        }
    }
}

// primitive
func definePrimitive(completion:@escaping @Sendable (Int) -> Void) {
    completion(10)
}

//func exePrimitive() {
//    var rate = 10
//    Task {
//        definePrimitive { num in
//            print(num * rate)
//        }
//    }
//}

let sendableClosure = { @Sendable (number: Int) -> String in
    if number > 12 {
        return "More than a dozen."
    } else {
        return "Less than a dozen"
    }
}

class Neko {
    var age = 0
}

func test() {
    let neko = Neko()
    Task {
        let value = sendableClosure(neko.age)
        print(value)
    }
}

#Preview {
    SwiftConcurrencyView()
}

