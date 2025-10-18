//
//  TestView.swift
//  SwiftUI101
//
//  Created by 井本　智博 on 2025/09/28.
//


import SwiftUI


struct TestView: View {
    @State private var showDialog: Bool = false
    var body: some View {
        VStack {
            
        }
        .frame(width: 300, height: 50)
        .border(.pink)
        .onGeometryChange(for: CGSize.self) { geometry in
            geometry.size
        } action: { newValue in
            print(newValue)
        }
    }
}

#Preview {
    TestView()
}
