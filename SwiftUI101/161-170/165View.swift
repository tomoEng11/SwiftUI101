//
//  165View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/22
//  
//

import SwiftUI

struct _165View: View {
    var body: some View {
        NavigationSplitView {
            Text("")
        } content: {
            Text("Content")
        } detail: {
            Text("Detail")
        }
    }
}

#Preview {
    _165View()
}
