//
//  185View.swift
//  SwiftUI101
//
//  Created by 井本　智博 on 2025/08/03.
//

import SwiftUI
import Playgrounds

struct _185View: View {
    @State private var progress: CGFloat = 1
    var body: some View {
        VStack {
            Circle()
                .trim(from: .zero, to: progress)
                .stroke()
        }
    }
}

#Preview {
    _185View()
}
