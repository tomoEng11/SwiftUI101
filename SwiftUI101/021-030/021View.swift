//
//  021View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/09
//  
//

import SwiftUI

struct _21View: View {
    @State private var isExpanded = false
    var body: some View {
        ScrollView {
            ExpandableText(content: _21sampleText)

            ExpandableText(content: _21sampleShortText)
        }
    }
}

struct ExpandableText: View {
    @State private var isExpanded = false
    @State private var textHeight: CGFloat? = nil
    @State private var originalHeight: CGFloat?

    @State private var isLaunched: Bool = false

    private var shouldExpand: Bool {
        return originalHeight ?? 0 > 80
    }

    let content: String

    init(content: String) {
        self.content = content
    }

    var body: some View {
        VStack {
            Text(content)
                .frame(height: textHeight)
                .background(
                    GeometryReader {
                        Color.clear
                            .preference(key: SizePreferenceKey.self, value: $0.size)
                    })
                .onPreferenceChange(SizePreferenceKey.self) { newSize in
                    firstLaunchSetup(height: newSize.height)
                }

            if shouldExpand {
                HStack {
                    Spacer()
                    Button {
                        updateTextHeight()
                    } label: {
                        Text(isExpanded ? "Collapse" : "Read More")
                    }
                }
            }
        }
    }

    func updateTextHeight() {
        if shouldExpand && isExpanded {
            textHeight = 80
        } else if shouldExpand && !isExpanded {
            textHeight = originalHeight
        }
        isExpanded.toggle()
    }

    func firstLaunchSetup(height: CGFloat) {
        if !isLaunched {
            originalHeight = height
            isLaunched = true
            if shouldExpand {
                textHeight = 80
                isExpanded = false
            }
        }
    }
}

let _21sampleText = "We're about to hear from Austrian Chancellor Christian Stocker at a news conference that's set to start at 15:15 local time (14:15 BST).Interior Minister Gerhard Karner and Education Minister Christoph Wiederkehr are also expected to join.Stay with us as we prepare to bring you key lines from there.You can also keep across updates by pressing watch live at the top of this page"
let _21sampleShortText = "Up to 6 hours of listening time on a single charge (up to 5.5 hours with Spatial Audio and Head Tracking enabled)"

#Preview {
    _21View()
}

