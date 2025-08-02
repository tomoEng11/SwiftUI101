//
//  140View.swift
//  SwiftUI101
//
//  Created by tomo on 2025/07/11
//
//

import SwiftUI

struct SectionData: Identifiable {
    let id = UUID()
    let teamName: String
    let members: [String]
}

struct _140View: View {
    var body: some View {
        TabView {
            Tab(content: {
                TabContent()
                    .listStyle(.plain)

            }, label: {
                Text("Plain")
            })

            Tab(content: {
                TabContent()
                    .listStyle(.grouped)
            }, label: {
                Text("Group")
            })

            Tab(content: {
                TabContent()
                    .listStyle(.inset)
            }, label: {
                Text("Inset")
            })

            Tab(content: {
                TabContent()
                    .listStyle(.insetGrouped)
            }, label: {
                Text("InsetGroup")
            })

            Tab(content: {
                TabContent()
                    .listStyle(.sidebar)
            }, label: {
                Text("Side")
            })
        }
    }
}

struct TabContent: View {

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
            .listRowBackground(Color.blue)
        }
        // ListStyleがplainの時以外はこれがないと
        // backgroundは適用されない
        .scrollContentBackground(.hidden)
        .background(.red)
    }
}



#Preview {
    _140View()
}
