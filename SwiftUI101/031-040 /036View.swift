//
//  036View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/20
//  
//

import SwiftUI

struct _36View: View {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

final class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

            return true
        }
}



#Preview {
    _36View()
}
