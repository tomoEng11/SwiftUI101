//
//  101View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/22
//  
//

import SwiftUI

struct _101View: View {
    var body: some View {
        VStack {
            Circle()
                .frame(width: 200, height: 200)

            GeometryReader { geo in
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.pink)
                Image(systemName: "swift")
                    .resizable()
                    .foregroundStyle(.blue)
                    .frame(width: 80, height: 80)
                Image(systemName: "car")
                    .resizable()
                    .foregroundStyle(.orange.opacity(0.5))
                    .frame(width: 80, height: 80)
            }
        }
    }
}

#Preview {
    _101View()
}
