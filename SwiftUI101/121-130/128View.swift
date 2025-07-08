//
//  128View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/30
//  
//

import SwiftUI

struct _128View: View {
    @Environment(\.defaultMinListRowHeight) var minHeight
    var body: some View {
        Form {
//            Section {
//                Text("Liquid Glass")
//                Text("Foundation Models Framework")
//            } header: {
//                Text("WWDC25")
//            }
//
//            Section {
//                Text("Liquid Glass")
//                Text("Foundation Models Framework")
//            } header: {
//                Text("WWDC25")
//            }
//            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

            // EdgeInsetsがゼロ
            Section {
                Color.blue
            } header: {
                Text("WWDC25")
            }
            .listRowInsets(EdgeInsets())

            // bottomが30
            Section {
                Color.blue
            } header: {
                Text("WWDC25")
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))

            // topとbottomが30になってる？
            Section {
                Color.blue
            } header: {
                Text("WWDC25")
            }
            .listRowInsets(EdgeInsets(top: 30, leading: 0, bottom: 30, trailing: 0))

            // minListRowHeightよりセルの中身が小さいと
            // 余白が追加される
            Section {
                Color.blue
                    .frame(height: minHeight)
            } header: {
                Text("WWDC25")
            }
            .listRowInsets(EdgeInsets(top: 30, leading: 0, bottom: 30, trailing: 0))

            Section {
                Text("Hello, World")
            } header: {
                Text("WWDC25")
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
        // List全体に適用する必要がある
//        .environment(\.defaultMinListRowHeight, 0)

    }
}

#Preview {
    _128View()
}
