//
//  155View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/23
//  
//

import SwiftUI

struct _155View: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...20, id: \.self) { _ in
                    Circle()
                        .frame(width: 80, height: 80)
                }
            }
        }
        .safeAreaInset(edge: .bottom, content: {
            VStack {
                Image(systemName: "swift")
                Text("Hydo")
            }
            .frame(maxWidth: .infinity)
            .foregroundStyle(.pink)
            .background(.thinMaterial)

        })
    }
}

#Preview {
    _155View()
}
