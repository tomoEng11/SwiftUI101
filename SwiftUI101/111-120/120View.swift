//
//  120View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/28
//  
//

import SwiftUI

struct _120View: View {
    @State private var date: Date = Date()
    var body: some View {
        // 文字の色は変更できない
        DatePicker("Pick a date", selection: $date)
                .foregroundStyle(.green)

        DatePicker("Pick a date", selection: $date)
            .background(.pink, in: RoundedRectangle(cornerRadius: 10))

        DatePicker("Pick a date", selection: $date)
            .background(RoundedRectangle(cornerRadius: 8, style: .continuous).fill(.pink).opacity(0.2))
    }
}

#Preview {
    _120View()
}
