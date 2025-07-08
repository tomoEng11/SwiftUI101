//
//  041View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/22
//  
//

import SwiftUI

struct _41View: View {
    @State private var viewModel = _41ViewModel()
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                ForEach(viewModel.repos) { repo in
                    LazyVStack {
                        Text("\(repo.name)")
                    }
                    .frame(height: 100)
                }
            }
            .task {
                await viewModel.fetch()
            }
        }
    }
}

@MainActor
@Observable
final class _41ViewModel {
    private(set) var repos: [_41Repo] = []
    private var currentPage = 1
    private var lastRequestedId: Int?

    func fetch(currentPage: Int = 1) async {
        guard let url = URL(string:"https://api.github.com/search/repositories?q=swift&sort=stars&page=\(currentPage)&per_page=30") else {
            print("url")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let dto = try JSONDecoder().decode(_41DTO.self, from: data)
            repos = dto.items
            let lastIndex = repos.endIndex - 1
            lastRequestedId = repos[lastIndex].id
        } catch {
            print(error)
        }
    }

    func needLoadMore(currentItem: _41Repo) async {
//        guard currentItem.id == lastRequestedId else {
//            return
//        }
        currentPage += 1
        await fetch(currentPage: currentPage)

    }
}

struct _41Repo: Identifiable, Codable {
    let id: Int
    let name: String
    let stargazersCount: Int
    let description: String

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case stargazersCount = "stargazers_count"
        case description
    }
}

struct _41DTO: Codable {
    let items: [_41Repo]
}




#Preview {
    _41View()
}
