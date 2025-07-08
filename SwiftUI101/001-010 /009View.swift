//
//  009View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/07
//  
//

import SwiftUI

struct _09View: View {
    @State private var isOn = false
    var body: some View {
        Text(isOn ? "A" : "B")
        Button(action: {
            isOn.toggle()
        }, label: {
            Text("Button")
        })
    }
}

#Preview {
    _09View()
}
