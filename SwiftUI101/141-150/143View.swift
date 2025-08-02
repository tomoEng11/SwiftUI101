//
//  143View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/11
//  
//

import SwiftUI

struct _143View: View {
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
                    VStack {
                        Text(section.teamName)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 10)
                            .padding(.leading, 5)
                    }
                    .listRowInsets(.init())
                    .overlay(alignment: .bottom) {
                        Rectangle()
                            .frame(height: 1)
                    }
                }
            }

        }
    }
}

#Preview {
    _143View()
}
