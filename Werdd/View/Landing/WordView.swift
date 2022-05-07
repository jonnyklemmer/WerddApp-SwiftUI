//
//  WordView.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/3/22.
//

import SwiftUI

struct WordView: View {
    let word: String
    let partOfSpeech: String
    let definition: String

    var body: some View {
        Text("WordView")
    }
}

struct LoadingWordView: View {
    var body: some View {
        WordView(word: "LOADING", partOfSpeech: "LOAD", definition: "LOADING...LOADING...LOADING...LOADING...LOADING...LOADING.")
            .redacted(reason: .placeholder)
            .shimmering()
    }
}

struct WordView_Previews: PreviewProvider {
    static var previews: some View {
        WordView(
            word: "Palermo",
            partOfSpeech: "noun",
            definition: "the capital of Sicily; located in northwestern Sicily; an important port for 3000 years"
        )
    }
}
