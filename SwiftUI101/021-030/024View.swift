//
//  024View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/14
//  
//

import SwiftUI

struct _24View: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct _24ViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.white)
                    .shadow(radius: 5)
            )
    }
}

#Preview {
    _24View()
}
