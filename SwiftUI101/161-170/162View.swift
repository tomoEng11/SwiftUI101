//
//  162View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/22
//  
//

import SwiftUI

struct _162View: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Find")
            }
            .navigationTitle("Title")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing, content: {
                    Button("Done") {

                    }
                })
            }
            .tint(.pink)
//            .toolbarVisibility(.hidden, for: .navigationBar)

        }
    }
}

#Preview {
    _162View()
}
