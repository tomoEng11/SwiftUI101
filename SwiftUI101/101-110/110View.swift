//
//  110View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/24
//  
//

import SwiftUI

struct _110View: View {
    var body: some View {
        VStack {
            // TextはVStackの大きさになる(paddingを考慮)
            Text("Frame")
                .frame(maxWidth: .infinity)
                .border(Color.blue)
            // CRFはVStackの大きさとは関係ない
            Text("CRF")
                .containerRelativeFrame(.horizontal)
                .border(.green)

        }
        .padding(50)
    }
}

#Preview {
    _110View()
}
