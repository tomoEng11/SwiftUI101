//
//  134View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/09
//  
//

import SwiftUI

struct _134View: View {
    @State private var text = "Hello"
    var body: some View {
        LabeledContent("Title", value: text)
        LabeledContent("", value: 50, format: .percent)
    }
}

#Preview {
    _134View()
}
