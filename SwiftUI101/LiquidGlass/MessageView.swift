//
//  MessageView.swift
//  SwiftUI101
//
//  Created by 井本　智博 on 2025/09/23.
//

import SwiftUI

struct MessageView: View {
    @State private var text = ""
    @FocusState private var isFocused: Bool
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    TextField("", text: $text)
                        .padding()
                        .textFieldStyle(.roundedBorder)
                    ForEach(0...20, id: \.self) { n in
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 200, height: 100)
                            .foregroundStyle(.blue)
                            .overlay {
                                Text("\(n)")
                            }
                            .onTapGesture {
                                isFocused = false
                            }
                    }
                }
            }
            .safeAreaInset(edge: .bottom) {
                HStack{
                    Image(systemName: "magnifyingglass.circle")
                    TextEditor(text: $text)
                        .fixedSize(horizontal: false, vertical: true)
                        .focused($isFocused)
                        .border(.red)
                }
            }
        }
    }
}

#Preview {
    MessageView()
}
