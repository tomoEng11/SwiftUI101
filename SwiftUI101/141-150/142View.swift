//
//  142View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/11
//  
//

import SwiftUI

struct _142View: View {
    let sections: [SectionData] = [
        SectionData(teamName: "チームZ", members: ["潔", "千切", "蜂楽"]),
        SectionData(teamName: "チームX", members: ["凪", "レオ", "斬鉄"])
    ]

    var body: some View {
        List {
            ForEach(sections) { section in
                Section {
                    ForEach(section.members, id: \.self) { member in
                        Text(member)
                    }
                } header: {
                    Text(section.teamName)
                }
            }
            // trailingに出てくる
            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                Button(action: {
                    print("削除")
                }, label: {
                    Label("Swift", systemImage: "swift")
                })
                .tint(.orange)

            }
            // leadingに出てくる
            // allowsFullSwipeはfullSwipe時にAcionを自動で実行するかのbool
            .swipeActions(edge: .leading,allowsFullSwipe: false) {
                Button(action: {
                    print("削除")
                }, label: {
                    Label("Swift", systemImage: "swift")
                })
                .tint(.green)

            }
        }
    }
}

#Preview {
    _142View()
}
