//
//  031View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/19
//  
//

import SwiftUI

struct _31View: View {
    @State private var showSheet = false
    var body: some View {
        Button("sheet", action: {showSheet = true})
            .fullScreenCover(isPresented: $showSheet, content: {_31SheetView()})
    }

}

struct _31SheetView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button("dismiss", action: {dismiss()})
    }
}

#Preview {
    _31View()
}
