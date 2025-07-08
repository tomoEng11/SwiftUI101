//
//  022View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/13
//  
//

import SwiftUI

struct _22View: View {
    @State private var text: AttributedString = .init("I trust you will make her feel welcome.")
    var body: some View {
        VStack {
            Text(text)
                .onAppear {
                    renderText()
                }
        }
    }


    func renderText() {
        guard let firstRange = text.range(of: "make"),
              let nextRange = text.range(of: "feel welcome") else { return }
        let rangeSet = [firstRange, nextRange]

        rangeSet.forEach {
            text[$0].foregroundColor = .orange
            text[$0].font = Font.system(size: 16, weight: .bold).italic()
        }
    }
}

#Preview {
    _22View()
}
