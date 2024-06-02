//
//  Theme.swift
//  Scrumdinger
//
//  Created by Suryakant Sharma on 25/05/24.
//

import SwiftUI


enum Theme: String, CaseIterable, Identifiable  {
    var id: String {
      name
    }
    
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow

    var accentColor: Color {
            switch self {
            case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
            case .indigo, .magenta, .navy, .oxblood, .purple: return .white
            }
        }
    var mainColor: Color {
        switch self {
        case .bubblegum:
            return .yellow
        case .buttercup:
            return .green
        case .indigo:
            return .indigo
        case .lavender:
            return .brown
        case .magenta:
            return .blue
        case .navy:
            return .mint
        case .orange:
            return .orange
        case .oxblood:
            return .red
        case .periwinkle:
            return .cyan
        case .poppy:
            return .teal
        case .purple:
            return .purple
        case .seafoam:
            return .secondary
        case .sky:
            return .yellow
        case .tan:
            return .yellow
        case .teal:
            return .yellow
        case .yellow:
            return .yellow
        }
    }
    
    var name: String {
          rawValue.capitalized
    }
}
