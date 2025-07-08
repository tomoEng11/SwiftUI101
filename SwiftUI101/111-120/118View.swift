//
//  118View.swift
//  SwiftUI101
//
//  Created by tomo on 2025/06/28
//
//

import SwiftUI

struct _118View: View {
    @State private var date = Date()

    var body: some View {
        Form {

            Section {
                DatePicker("Pick a date", selection: $date)

                DatePicker("Pick a date", selection: $date, displayedComponents: .date)

                DatePicker("Pick a date", selection: $date)
                    .labelsHidden()
            }


            // graphicalはデフォルトでラベルは表示されないが
            // accessibilityの観点で、labelのhiddenを設定した方がいい
            Section {
                DatePicker("Pick a date", selection: $date, displayedComponents: .date)
                    .datePickerStyle(.graphical)
                    .labelsHidden()
            }

            DatePicker("Pick a date", selection: $date, displayedComponents: .date)
                .datePickerStyle(.wheel)
                .labelsHidden()
        }
    }
}

#Preview {
    _118View()
}
