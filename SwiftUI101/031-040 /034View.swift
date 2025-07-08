//
//  034View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/20
//
//

import SwiftUI

struct _34View: View {
    @State private var orientation: UIDeviceOrientation = .unknown

    var body: some View {
        Group {
            if orientation.isPortrait {
                Text("Portrait")
            } else if orientation.isLandscape {
                Text("Landscape")
            } else if orientation.isFlat {
                Text("Flat")
            } else {
                Text("Unknown")
            }
        }
        .onRotate { newOrientation in
            orientation = newOrientation
        }
    }
}

struct DeviceRotationModifier: ViewModifier {

    let action: (UIDeviceOrientation) -> Void

    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
                action(UIDevice.current.orientation)
            }
    }
}

extension View {
    func onRotate(_ action: @escaping (UIDeviceOrientation) -> Void) -> some View {
        self.modifier(DeviceRotationModifier(action: action))
    }
}

#Preview {
    _34View()
}
