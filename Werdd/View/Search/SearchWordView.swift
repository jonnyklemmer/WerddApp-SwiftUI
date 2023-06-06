//
//  SearchWordView.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/6/22.
//

import SwiftUI

struct SearchWordView: View {
    let word: String
    let partOfSpeech: String
    let definition: String

    var body: some View {
        ZStack {
            Color.foreground3

            WordView(word: word, partOfSpeech: partOfSpeech, definition: definition)
                .padding(24)
        }
        .fixedSize(horizontal: false, vertical: false)
        .cornerRadius(30)

    }
}

struct SearchWordView_Previews: PreviewProvider {
    static var previews: some View {
        SearchWordView(word: "preview", partOfSpeech: "verb", definition: "gettin a sneak peek.")
    }
}
