//
//  001View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/07
//  
//

import SwiftUI

struct _01View: View {
    var body: some View {
        Image(.timelesz)
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 200)
            .border(Color.blue)
            .background(.red)

        Rectangle()
            .frame(width: 150, height: 200)
    }
}

#Preview {
    _01View()
}
