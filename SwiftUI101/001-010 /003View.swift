//
//  003View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/07
//  
//

import SwiftUI

struct _03View: View {
    var body: some View {
        Image(.bluelock)
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(.circle)
            .border(Color.gray)

        /// NOTE
        /// clipShapeは見た目を変えてるだけで実態としては
        /// 元の画像の形を維持。borderは四角のまま。
    }
}

#Preview {
    _03View()
}
