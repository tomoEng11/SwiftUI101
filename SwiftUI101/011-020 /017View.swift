//
//  017View.swift
//  SwiftUI101
//
//  Created by tomo on 2025/06/11
//
//

import SwiftUI

struct _17View: View {
    @State private var childSize: CGSize = .zero

    var body: some View {
        VStack {
            Text("子のサイズ: \(childSize.width)x\(childSize.height)")
            Color.blue
                .frame(width: 100, height: 100)
                .background(
                    GeometryReader { proxy in
                        Color.clear
                            .preference(key: SizePreferenceKey.self, value: proxy.size)
                    }
                )
        }
        .onPreferenceChange(SizePreferenceKey.self) { newSize in
            childSize = newSize
        }
    }
}

struct SizePreferenceKey: PreferenceKey {
    static let defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}


#Preview {
    _17View()
}
