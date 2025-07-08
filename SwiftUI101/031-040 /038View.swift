//
//  038View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/21
//  
//

import SwiftUI

struct _38View: View {
    @State private var showModal = false

    var body: some View {
        Button(action: {
            showModal = true
        }, label: {
            Text("show modal")
        })
        .sheet(isPresented: $showModal) {
            VStack {
                Text("Modal")
            }
        }
        
    }
}

#Preview {
    _38View()
}
