//
//  125View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/29
//  
//

import SwiftUI

struct _125View: View {
    let items: [_125SettingItem] = [.init(id:0,title: "機内モード", type: .hasToggle, color: .orange, icon: "airplane"), .init(id: 2, title: "Wi-Fi", type: .hasLabel("未接続"), color: .blue, icon: "wifi")]
    var body: some View {
        Form {
            ForEach(items) { item in
                _125SettingItemView(item: item)
            }
        }
    }
}

struct _125SettingItemView : View {
    @State private var isOn = false
    let item: _125SettingItem
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(item.color)
                .overlay {
                    Image(systemName: item.icon)
                        .foregroundStyle(.white)
                }
                .frame(width: 32, height: 32)

            Text(item.title)

            Spacer()

            _125SettingItemTrailing(item: item)
        }
    }
}

struct _125SettingItemTrailing : View {
    let item: _125SettingItem
    @State private var isOn = false

    var body: some View {
        switch item.type {
        case .standard:
            Image(systemName: "chevron.right")
        case .hasToggle:
            HStack {
                Toggle("", isOn: $isOn)
                    .onChange(of: isOn, {})
            }
        case .hasLabel(let label):
            HStack {
                Text(label)
                Image(systemName: "chevron.right")
            }
            .foregroundStyle(.secondary)
        }
    }
}


struct _125SettingItem: Identifiable {
    let id: Int
    var title: String
    var type: _Type
    var color: Color
    var icon: String
}

enum _Type {
    case standard
    case hasToggle
    case hasLabel(String)
}

#Preview {
    _125View()
}
