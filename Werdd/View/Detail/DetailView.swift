//
//  DetailView.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/6/22.
//

import SwiftUI

struct DetailView: View {
    let type: DetailView.DetailType
    let bodyText: String
    let highlightText: String?

    var body: some View {
        Text("DetailView")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(
            type: .definition,
            bodyText: "enjoying",
            highlightText: "adj."
        )
    }
}

extension DetailView {
    enum DetailType: String {
        case definition
        case synonym
        case antonym
        case exampleUsage

        var displayString: String {
            switch self {
            case .definition: return "Definition"
            case .synonym: return "Synonyms"
            case .antonym: return "Antonyms"
            case .exampleUsage: return "Example Usage"
            }
        }

        var displayColor: Color {
            switch self {
            case .definition: return Color.foreground1
            case .synonym: return Color.foreground2
            case .antonym: return Color.foreground4
            case .exampleUsage: return Color.foreground3
            }
        }
    }
}
