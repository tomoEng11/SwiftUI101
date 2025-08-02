//
//  148View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/14
//  
//

import SwiftUI

struct _148View: View {
    @State private var data: Set<DateComponents> = []
    var body: some View {
//        MultiDatePicker("Cal", selection: $data)
        MultiDatePicker("Cal1", selection: $data, in: ..<Date())
        MultiDatePicker("Cal1", selection: $data, in: Date()...)
    }
}

#Preview {
    _148View()
}
