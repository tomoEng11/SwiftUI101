//
//  020View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/08
//  
//

import SwiftUI

struct _20View: View {
    @State private var navigateToNextScreen: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                Button("遷移", action: {
                    navigateToNextScreen = true
                })
            }
            .navigationDestination(isPresented: $navigateToNextScreen, destination: {Text("Second View")})
        }
    }
}

#Preview {
    _20View()
}
