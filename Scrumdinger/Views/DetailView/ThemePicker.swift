//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Suryakant Sharma on 01/06/24.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme

    var body: some View {
        Picker("Theme", selection: $selection) {
          ForEach(Theme.allCases) { theme in
            ThemeView(theme: theme)
              .tag(theme)
          }
        }
        .pickerStyle(.navigationLink)

    }
}

#Preview {
    ThemePicker(selection: .constant(.periwinkle))
}
