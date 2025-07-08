//
//  117View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/28
//  
//

import SwiftUI

struct _117View: View {
    @State private var color: Color = .red
    var body: some View {
        ColorPicker("Pick a color", selection: $color)
    }
}

#Preview {
    _117View()
}
