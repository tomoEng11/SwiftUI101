//
//  029View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/06/19
//  
//

import SwiftUI

struct _29View: View {
    @State var selectedHour = 0
    @State var selectedMinute = 0
    
    var body: some View {
        VStack {

            Text("\(selectedHour)時\(selectedMinute)分")
            HStack {
                _29PickerView(selectedValue: $selectedHour, value: Array(0...23))
                _29PickerView(selectedValue: $selectedMinute, value: Array(0...59))
            }
        }
    }
}

struct _29PickerView: View {
    @Binding var selectedValue: Int
    let value: [Int]
    var body: some View {
        Picker("Select a fruit", selection: $selectedValue) {
            ForEach(value, id: \.self) {
                Text($0.description).tag($0)
            }
        }
        .pickerStyle(.wheel)
    }
}

#Preview {
    _29View()
}
