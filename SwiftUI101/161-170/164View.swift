//
//  164View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/22
//  
//

import SwiftUI

struct _164View: View {
    @State private var visibility = NavigationSplitViewVisibility.all
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            VStack {
                Text("List")
            }
            .navigationTitle("Title")
        } detail: {
            VStack {
                Text("Detail")
                Button("Show SideBar", action: {
                    visibility = .all
                })
            }
        }
    }
}

#Preview {
    _164View()
}
