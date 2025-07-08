//
//  004View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/07
//  
//

import SwiftUI

struct _04View: View {
    var body: some View {
        Image(.bluelock)
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 150)
            .clipShape(.circle)
            .overlay(Circle().stroke(Color.blue, lineWidth: 3))

//        Circle().fill(.blue)
//        Circle().stroke(Color.blue, lineWidth: 3)
    }
}



#Preview {
    _04View()
}
