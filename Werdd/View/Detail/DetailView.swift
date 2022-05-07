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
        ZStack {
            type.displayColor

            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    if let highlightText = highlightText {
                        Text(highlightText)
                            .font(.system(size: 16, weight: .medium, design: .rounded))
                            .italic()
                    }

                    Text(bodyText)
                        .font(.system(size: 24, weight: .light, design: .rounded))

                    Spacer(minLength: 16)

                    Text(type.displayString)
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                }

                Spacer()
            }
            .padding(.vertical)
            .padding(.horizontal, 32)
        }
        .fixedSize(horizontal: false, vertical: true)
        .clipShape(RoundedRectangle(cornerRadius: 30))
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
