//
//  005View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/07
//  
//

import SwiftUI

struct _05View: View {
    var body: some View {
        HStack {
            Spacer()
            Image(.bluelock)
                .resizable()
                .frame(width: 50, height: 50)
            Spacer()

            Image(.bluelock)
                .resizable()
                .frame(width: 50, height: 50)
            Spacer()

            Image(.bluelock)
                .resizable()
                .frame(width: 50, height: 50)
            Spacer()
        }
    }
}

#Preview {
    _05View()
}
