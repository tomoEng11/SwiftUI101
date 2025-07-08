//
//  108View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/23
//  
//

import SwiftUI

struct _108View: View {
    var body: some View {
        ViewThatFits(in: .horizontal) {
            Rectangle()
                .frame(width: 800, height: 100)
                .foregroundStyle(.red)

            Rectangle()
                .frame(width: 500, height: 100)
                .foregroundStyle(.blue)

            Rectangle()
                .frame(width: 300, height: 100)
                .foregroundStyle(.green)

        }
    }
}

#Preview {
    _108View()
}
