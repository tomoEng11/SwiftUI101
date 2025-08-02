//
//  168View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/22
//  
//

import SwiftUI

struct FileItem: Identifiable {
    let id = UUID()
    let name: String
    var isFolder: Bool
    var children: [FileItem]? = nil
}

struct _168View: View {
    var body: some View {
        NavigationStack {
            List {
                OutlineGroup(fileSystem, children: \.children) { item in
                    HStack {
                        Image(systemName: item.isFolder ? "folder.fill" : "doc.text")
                            .foregroundColor(item.isFolder ? .blue : .gray)
                        Text(item.name)
                    }
                }
            }
            .navigationTitle("Files")
        }
    }
}

let fileSystem: [FileItem] = [
    FileItem(name: "Documents", isFolder: true, children: [
        FileItem(name: "Resume.pdf", isFolder: false),
        FileItem(name: "Notes.txt", isFolder: false),
        FileItem(name: "Projects", isFolder: true, children: [
            FileItem(name: "App.swift", isFolder: false),
            FileItem(name: "Design.sketch", isFolder: false)
        ])
    ]),
    FileItem(name: "Pictures", isFolder: true, children: [
        FileItem(name: "Vacation.jpg", isFolder: false),
        FileItem(name: "Family.png", isFolder: false)
    ])
]

#Preview {
    _168View()
}
