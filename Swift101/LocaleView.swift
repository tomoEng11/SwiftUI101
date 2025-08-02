//
//  LocaleView.swift
//  SwiftUI101
//  
//  Created by tomo on 2025/07/21
//  
//

import SwiftUI

struct LocaleView: View {

    @State private var locale: Locale?

    var body: some View {
        ScrollView {
                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(localeInfoStrings(), id: \.self) { line in
                            Text(line)
                                .font(.system(.body, design: .monospaced))
                        }
                    }
                    .padding()
                }
    }

    func setLocale() {
        locale = Locale.autoupdatingCurrent

    }

    func localeInfoStrings() -> [String] {
        let locale = Locale.autoupdatingCurrent

            return [
                "=== Locale Info ===",
                "Identifier: \(locale.identifier)",
                "Language Code: \(locale.language.languageCode?.identifier ?? "-")",
                "Script: \(locale.language.script?.identifier ?? "-")",
                "Region Code: \(locale.region?.identifier ?? "-")",
                "Currency: \(locale.currency?.identifier ?? "-")",
                "Currency Symbol: \(locale.currencySymbol ?? "-")",
                "Decimal Separator: \(locale.decimalSeparator ?? "-")",
                "Grouping Separator: \(locale.groupingSeparator ?? "-")",
                "Uses Metric System: \(locale.usesMetricSystem.description)",
                "First Day of Week: \(locale.firstDayOfWeek.rawValue.description ?? "-")",
                "Collation Identifier: \(locale.collationIdentifier ?? "-")",
                "Numbering System: \(locale.numberingSystem.identifier ?? "-")"
            ]
        }
}

#Preview {
    LocaleView()
}


struct LocalesView: View {
    let sampleDate = Date()
    let sampleNumber = 1234.56
    let sampleCurrency = 1000.0
    let locales: [Locale] = [
        Locale(identifier: "ja_JP"),
        Locale(identifier: "en_US"),
        Locale(identifier: "de_DE"),
        Locale(identifier: "zh-CN"),
        Locale(identifier: "zh-Hant")
    ]

    var body: some View {
        List {
            ForEach(locales, id: \.identifier) { locale in
                Section(locale.identifier) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("\(dateString(for: locale))")
                        Text("\(timeString(for: locale))")
                        Text("Number: \(numberString(for: locale))")
                        Text("Currency: \(currencyString(for: locale))")
                        Text("Script: \(scriptDescription(for: locale))")
                    }
                }
            }
        }
    }

    func dateString(for locale: Locale) -> String {
        let formatter = DateFormatter()
        formatter.locale = locale
        formatter.dateStyle = .full
        formatter.timeStyle = .none
        return formatter.string(from: sampleDate)
    }

    func timeString(for locale: Locale) -> String {
        let formatter = DateFormatter()
        formatter.locale = locale
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        return formatter.string(from: sampleDate)
    }

    func numberString(for locale: Locale) -> String {
        let formatter = NumberFormatter()
        formatter.locale = locale
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: sampleNumber)) ?? "-"
    }

    func currencyString(for locale: Locale) -> String {
        let formatter = NumberFormatter()
        formatter.locale = locale
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: sampleCurrency)) ?? "-"
    }

    func scriptDescription(for locale: Locale) -> String {
        guard let script = locale.language.script?.identifier else {
            return "-"
        }
        let enUS = Locale(identifier: "en-US")
        return enUS.localizedString(forScriptCode: script) ?? script
    }
}

#Preview("LocalesView") {
    LocaleView()
}
