//
//  119View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/28
//  
//

import SwiftUI

struct _119View: View {
    @State private var date = Date()

    var body: some View {
        DatePicker("Pick a date", selection: $date, displayedComponents: [.hourAndMinute])

        DatePicker("Pick a date", selection: $date, displayedComponents: [.hourAndMinute, .date])

        DatePicker("Pick a date", selection: $date, displayedComponents: [.date])
    }
}

#Preview {
    _119View()
}
