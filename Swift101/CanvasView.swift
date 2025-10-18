//
//  CanvasView.swift
//  SwiftUI101
//
//  Created by 井本　智博 on 2025/08/03.
//

import SwiftUI

struct CanvasView: View {
    var body: some View {
        VStack(spacing: 40) {
            // 背景をつけない例
            Text("背景なし")
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .border(.green)
            
            // 背景をつけた例
            Text("背景あり")
            Circle()
                .fill(Color.blue)
                .background(Color.red) // 背景がビュー全体に適用
                .frame(width: 100, height: 100)
        }
        .font(.title)
        .padding()
    }
    
   
}

#Preview {
    CanvasView()
}
