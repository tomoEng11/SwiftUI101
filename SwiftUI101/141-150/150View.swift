//
//  150View.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/15
//  
//

import SwiftUI

struct _150View: View {
    @State private var isPresented: Bool = false
    @State private var dates: Set<DateComponents> = []
    // これシートの中で使えない？
    @Environment(\.dismiss) var dismiss

    private var datesArray: [String] {
        dates.sorted { date1, date2 in
            date1.date! < date2.date!
        }.map { date in
            "\(date.month!)/\(date.day!)"
        }
    }

    var body: some View {
        VStack {
            LabeledContent("Dates") {
                Button(action: {
                    isPresented = true
                }, label: {
                    if datesArray.isEmpty {
                        Text("Select dates")
                    } else {
                        Text(datesArray, format: .list(type: .and, width: .short))
                    }
                })
            }
        }
        .sheet(isPresented: $isPresented) {
            VStack {
                MultiDatePicker("", selection: $dates)
                Button(action: {
                    isPresented = false
                }, label: {
                    Text("Done")
                })
            }
        }
    }
}

#Preview {
    _150View()
}
