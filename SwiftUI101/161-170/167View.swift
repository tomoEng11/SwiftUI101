//
//  167View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/22
//  
//

import SwiftUI

struct _167View: View {
    var body: some View {
        NavigationSplitView {
            NavigationLink("Navigate", destination: {
                _167DetailView()
            })
        } detail: {
            Text("Detail")
        }
    }
}

struct _167DetailView: View {
    var body: some View {
        Text("NavigationDestination")
    }
}

#Preview {
    _167View()
}
