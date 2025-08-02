//
//  160View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/15
//  
//

import SwiftUI

struct _160View: View {
    @State private var members: [String] = [
        "Alice",
        "Bob",
        "Charlie",
        "David",
    ]
    var body: some View {
        VStack(spacing: 20) {
            Group {
                Text(members, format: .list(type: .or, width: .narrow))
                Text(members, format: .list(type: .or, width: .short))
                Text(members, format: .list(type: .or, width: .standard))
            }

            Group {
                Text(members, format: .list(type: .and, width: .narrow))
                Text(members, format: .list(type: .and, width: .short))
                Text(members, format: .list(type: .and, width: .standard))
            }
        }
    }
}

#Preview {
    _160View()
}
