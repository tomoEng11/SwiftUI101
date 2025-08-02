//
//  170View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/24
//  
//

import SwiftUI



#Preview {
    _170View()
}

struct _170View: View {

    private let colors: [Color] = [.pink, .blue, .orange, .green]

    var body: some View {
        GeometryReader { geometryProxy in
            let safeAreaInsets = geometryProxy.safeAreaInsets
            let topSafeAreaInset = safeAreaInsets.top
            let bottomSafeAreaInset = safeAreaInsets.bottom

            ScrollView {
                LazyVStack(spacing: .zero) {
                    ForEach(0..<20) { i in
                        content
                            .containerRelativeFrame(.vertical) { length, _ in
                                length - topSafeAreaInset - bottomSafeAreaInset
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.top, topSafeAreaInset)
                            .padding(.bottom, bottomSafeAreaInset)
                            .background(colors[i % colors.count].gradient)
                    }
                }
            }
            .scrollTargetBehavior(.paging)
            .ignoresSafeArea()
            .contentMargins(.top, topSafeAreaInset, for: .scrollIndicators)
            .contentMargins(.bottom, bottomSafeAreaInset, for: .scrollIndicators)
        }
    }

    var content: some View {
        Text("Hello, world.")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
    }
}
