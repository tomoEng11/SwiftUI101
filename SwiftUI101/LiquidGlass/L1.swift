//
//  L1.swift
//  SwiftUI101
//
//  Created by 井本　智博 on 2025/08/31.
//

import SwiftUI

struct L1: View {
    var body: some View {
        TabView {
            Tab(role: .search) {
                CollectionView()
            } label: {
                Image(systemName: "house")
            }
            
            Tab {
                CollectionView2()
            } label: {
                Image(systemName: "magnifyingglass")
            }
        }
        .tabBarMinimizeBehavior(.onScrollDown)
    }
}

#Preview {
    L1()
}

