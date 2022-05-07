//
//  DetailContentView.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/6/22.
//

import SwiftUI

struct DetailContentView: View {
    let word: Word
    private let viewModel: DetailViewModel

    init(word: Word) {
        self.word = word
        self.viewModel = DetailViewModel(word: word)
    }

    var body: some View {
        Text("DetailContentView")
    }
}

struct DetailContentView_Previews: PreviewProvider {
    static var previews: some View {
        let word = Word(
            word: "test",
            definition: "blah blah definition blah",
            partOfSpeech: "noun",
            synonyms: ["exam"],
            antonyms: nil,
            examples: ["ACT", "SAT", "Uniform Bar Examination (UBE)"])
        DetailContentView(word: word)
    }
}
