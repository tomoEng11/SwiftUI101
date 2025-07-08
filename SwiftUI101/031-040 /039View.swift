//
//  039View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/21
//  
//

import SwiftUI

struct _39View: View {
    @State private var repos: [_39Repo] = []

    var body: some View {
        VStack {
            if repos.isEmpty {
                Text("data not found")
            } else {
                List {
                    ForEach(repos) { repo in
                        VStack {
                            Text(repo.name)
                                .font(.headline)
                            Text(repo.description)
                                .foregroundStyle(.secondary)
                            Text("\(repo.stargazersCount) stars")
                        }
                    }
                }
            }
        }
        .task {
            do {
                repos = try await fetch()
            } catch {
                print("error")
            }
        }
    }

    func fetch() async throws -> [_39Repo] {
        guard let url = URL(string:"https://api.github.com/search/repositories?q=swift&sort=stars&page=1&per_page=30") else {
            return []
        }

        let (data, _) = try await URLSession.shared.data(from: url)

        let repos = try JSONDecoder().decode(_39DTO.self, from: data)

        return repos.items
    }
}

struct _39Repo: Codable, Identifiable {
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

struct _39DTO: Codable {
    let items: [_39Repo]
}

#Preview {
    _39View()
}
