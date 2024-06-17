//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Suryakant Sharma on 01/06/24.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme

    var body: some View {
         Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}

extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
