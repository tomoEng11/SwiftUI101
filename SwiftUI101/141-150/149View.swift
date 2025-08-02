//
//  149View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/14
//  
//

import SwiftUI

struct _149View: View {
    @State private var dates: Set<DateComponents> = []
    var body: some View {
        MultiDatePicker("Cal", selection: $dates)
            .background(.gray.opacity(0.3), in: .rect(cornerRadius: 20))
        // 色はtintで変更する(foregroundStyleは意味なし)
            .tint(.red)
            .padding()
    }
}

#Preview {
    _149View()
}
