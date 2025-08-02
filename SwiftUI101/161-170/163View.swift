//
//  163View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/22
//  
//

import SwiftUI

struct _163View: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: _163SecondView(), label: {
                Label("Next", systemImage: "swift")
            })
        }
    }
}

struct _163SecondView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text("Second View")
            Button(action: {
                dismiss()
            }, label: { Text("Home") })

        }
        .navigationBarBackButtonHidden()
    }
}
#Preview {
    _163View()
}
