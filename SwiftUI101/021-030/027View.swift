//
//  027View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/15
//  
//

import SwiftUI

struct _27View: View {
    @State private var text = "My Text"
    var body: some View {
        NavigationStack {
            VStack (spacing: 20) {
                Text(text)
                    .font(.largeTitle)

                NavigationLink(destination: _27ChildView()) {
                    Text("Next")
                }
            }
        }

    }
}


struct _27ChildView: View {
    var body: some View {
        Text("Child View")
        Button(action: {

        }, label: {
            Text("Change Title")
        })
    }
}

#Preview {
    _27View()
}
