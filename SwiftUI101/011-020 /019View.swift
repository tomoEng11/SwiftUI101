//
//  019View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/08
//  
//

import SwiftUI

struct _19View: View {
    @State private var text = ""
    @State private var showSheet: Bool = false
    @State private var showAlert: Bool = false
    var body: some View {
        VStack {
            TextField("Text", text: $text)
                .padding()
                .border(Color.gray)

            Button(action: {
                checkValue()
            }, label: {Text("tap")})
        }
        .padding()
        .alert("アラート", isPresented: $showAlert, actions: {}, message: {Text("input error")})
        .sheet(isPresented: $showSheet, content:
                {Text("Sheet")})
    }

    func checkValue() {
        guard Double(text) != nil else {
            showAlert = true
            return
        }
        showSheet = true
    }
}

#Preview {
    _19View()
}
