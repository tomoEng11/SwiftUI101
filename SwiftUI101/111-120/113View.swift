//
//  113View.swift
//  SwiftUI101
//
//  Created by tomo on 2025/06/27
//
//

import SwiftUI

struct _113View: View {
    var body: some View {

        GeometryReader { geo in
            VStack(spacing: 20) {
                Text("Top: \(geo.safeAreaInsets.top)")
                Text("Bottom: \(geo.safeAreaInsets.bottom)")
                Text("Leading: \(geo.safeAreaInsets.leading)")
                Text("Trailing: \(geo.safeAreaInsets.trailing)")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .border(Color.blue)


            //                    Circle()
            //                        .frame(width: 30, height: 30)
            //                        .foregroundStyle(.teal)
            //                        .position(x: 30, y:geo.safeAreaInsets.top)
            //                        .border(Color.red)
            //
            //                    Circle()
            //                        .frame(width: 30, height: 30)
            //                        .foregroundStyle(.teal)
            //                        .position(x: 30, y:geo.safeAreaInsets.bottom)
            //                        .border(.white)
        }
        .background(Color.orange.opacity(0.3))
    }

}

#Preview {
    _113View()
}
