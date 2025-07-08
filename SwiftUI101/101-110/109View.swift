//
//  109View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/23
//  
//

import SwiftUI

struct _109View: View {
    var body: some View {
        ScrollViewReader { proxy in
            Button("Scroll to 1") {
                proxy.scrollTo(1, anchor: .top)
            }
            
            Button("Scroll to 30") {
                withAnimation {
                    proxy.scrollTo(30, anchor: .center)
                }
            }

            Button("Scroll to 50") {
                proxy.scrollTo(50, anchor: .center)
            }

            ScrollView {
                ForEach(1..<51) { index in
                    getImage(index: index)
                        .resizable()
                        .frame(width:50, height: 50)
                        .id(index)
                }
            }
        }
    }

    func getImage(index: Int) -> Image {
        Image(systemName: "\(index).square")
    }
    
}

#Preview {
    _109View()
}
