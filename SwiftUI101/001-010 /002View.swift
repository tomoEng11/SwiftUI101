//
//  002View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/07
//  
//

import SwiftUI

struct _02View: View {
    var body: some View {
        Image(.timelesz)
            .resizable()
            .scaledToFill()
            .frame(width: 120, height: 200)
            .border(.blue)
            .clipped()
    }
}

#Preview {
    _02View()
}
