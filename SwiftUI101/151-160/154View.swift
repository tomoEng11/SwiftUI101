//
//  154View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/23
//  
//

import SwiftUI

struct _154View: View {
    @State private var text = "ssss"
    @FocusState private var isFocused: Bool
    @State private var isEditing = false

    var body: some View {
        VStack {
            RenameButton()
            if isEditing {
                TextField("Enter text", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .focused($isFocused)
            } else {
                Text(text)
            }

        }
        .renameAction {
            isFocused.toggle()
            isEditing.toggle()
        }
    }
}

#Preview {
    _154View()
}
