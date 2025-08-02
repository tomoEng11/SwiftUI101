//
//  136View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/11
//  
//

import SwiftUI

struct _136View: View {
    var body: some View {
        ScrollView {

        }
        .safeAreaInset(edge: .top) {
            VStack {
                Text("HEADER")
                Image(systemName: "swift")
            }
            .background(.red)
        }
        .safeAreaInset(edge: .bottom) {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 300, height: 50)
        }
    }
}

#Preview {
    _136View()
}
