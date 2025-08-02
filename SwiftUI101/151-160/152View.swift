//
//  152View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/23
//  
//

import SwiftUI

struct _152View: View {
    @State private var progress = 0.5
    @State private var total = 1.0
    var body: some View {
        VStack {
            ProgressView(value: progress)
            ProgressView(value: progress, total: total)
        }
    }
}

#Preview {
    _152View()
}
