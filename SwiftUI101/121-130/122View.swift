//
//  122View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/29
//  
//

import SwiftUI

struct _122View: View {
    var body: some View {
        VStack {
            DisclosureGroup(
                content: {
                    VStack {
                        Image(.bluelock)
                        Text(content)
                    }
                    .padding()
                },
                label: {
                    Text("iPhone and Mac")
                })
            .padding()
            .tint(.orange)
            .background(RoundedRectangle(cornerRadius: 10).fill(.orange.opacity(0.2)))
        }
        .padding()
    }

    private let content = "With iPhone Mirroring, you can view your iPhone screen on your Mac and control it without picking up your phone. Continuity features also let you answer calls or messages right from your Mac. You can even copy images, video, or text from your iPhone and paste it all into a different app on your Mac. And with iCloud, you can access your files from either device."
}



#Preview {
    _122View()
}
