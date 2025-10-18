//
//  185View.swift
//  SwiftUI101
//
//  Created by 井本　智博 on 2025/08/03.
//

import SwiftUI
//import Playgrounds

struct _185View: View {
    var body: some View {
        VStack(spacing: 40) {

            // ① lineCap の比較
            VStack {
                Text("lineCap")
                    .font(.headline)

                HStack {
                    Capsule()
                        .stroke(Color.red,
                                style: StrokeStyle(lineWidth: 10, lineCap: .butt))
                        .frame(width: 150, height: 10)
                    Text("butt")
                }

                HStack {
                    Capsule()
                        .stroke(Color.green,
                                style: StrokeStyle(lineWidth: 10, lineCap: .round))
                        .frame(width: 150, height: 10)
                    Text("round")
                }

                HStack {
                    Capsule()
                        .stroke(Color.blue,
                                style: StrokeStyle(lineWidth: 10, lineCap: .square))
                        .frame(width: 150, height: 10)
                    Text("square")
                }
            }

            // ② lineJoin の比較
            VStack {
                Text("lineJoin")
                    .font(.headline)

                HStack {
                    Path { path in
                        path.move(to: CGPoint(x: 0, y: 50))
                        path.addLine(to: CGPoint(x: 50, y: 0))
                        path.addLine(to: CGPoint(x: 100, y: 50))
                    }
                    .stroke(Color.purple,
                            style: StrokeStyle(lineWidth: 10, lineJoin: .miter))
                    .frame(width: 100, height: 60)
                    Text("miter")
                }

                HStack {
                    Path { path in
                        path.move(to: CGPoint(x: 0, y: 50))
                        path.addLine(to: CGPoint(x: 50, y: 0))
                        path.addLine(to: CGPoint(x: 100, y: 50))
                    }
                    .stroke(Color.orange,
                            style: StrokeStyle(lineWidth: 10, lineJoin: .round))
                    .frame(width: 100, height: 60)
                    Text("round")
                }

                HStack {
                    Path { path in
                        path.move(to: CGPoint(x: 0, y: 50))
                        path.addLine(to: CGPoint(x: 50, y: 0))
                        path.addLine(to: CGPoint(x: 100, y: 50))
                    }
                    .stroke(Color.cyan,
                            style: StrokeStyle(lineWidth: 10, lineJoin: .bevel))
                    .frame(width: 100, height: 60)
                    Text("bevel")
                }
            }

            // ③ dash + dashPhase の比較
            VStack {
                Text("dash + dashPhase")
                    .font(.headline)

                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue,
                            style: StrokeStyle(lineWidth: 4, dash: [10, 5], dashPhase: 0))
                    .frame(width: 150, height: 50)
                    .overlay(Text("phase: 0"))

                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue,
                            style: StrokeStyle(lineWidth: 4, dash: [10, 5], dashPhase: 8))
                    .frame(width: 150, height: 50)
                    .overlay(Text("phase: 8"))
            }
        }
        .padding()
    }
}

#Preview {
    _185View()
}
