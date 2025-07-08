//
//  012View.swift
//  SwiftUI101
//
//  Created by tomo on 2025/06/08
//
//

import SwiftUI

struct _12View: View {
    let langList = ["English", "Japanese", "Chinese"]
    var body: some View {
        NavigationStack {
            List {
                ForEach(langList, id: \.self) { lang in
                    NavigationLink(
                        destination:_12DetailView(text: lang).navigationBarBackButtonHidden(true),
                        label: {
                        Text(lang)
                    })
                }
            }
        }
    }
}

struct _12DetailView: View {
    let text: String
    var body: some View {
        VStack {
            Text(text)
        }
    }
}

#Preview {
    _12View()
}
