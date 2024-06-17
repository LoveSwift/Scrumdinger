//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Suryakant Sharma on 26/05/24.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
                   configuration.title
                   configuration.icon
            }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
