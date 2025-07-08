//
//  030View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/19
//  
//

import SwiftUI

struct _30View: View {
    @State private var showSheet: Bool = false
    var body: some View {
        Button(action: {
            showSheet = true
        }, label: {Text("sheet")})
        .sheet(isPresented: $showSheet, content: {
            _30SheetView()
        })
    }
}

struct _30SheetView: View {
    var body: some View {
        Text("sheet")
    }
}

#Preview {
    _30View()
}
