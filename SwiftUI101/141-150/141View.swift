//
//  141View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/11
//  
//

import SwiftUI

struct _141View: View {
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
            .listRowSeparator(.visible)
            .listRowSeparatorTint(Color.blue)
            .listSectionSeparator(.visible, edges: .bottom)
            .listSectionSeparatorTint(Color.orange)
        }
        .refreshable {
            print("HEllo")
        }

    }
}

#Preview {
    _141View()
}
