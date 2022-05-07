//
//  DetailViewModel.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/6/22.
//

import Foundation

class DetailViewModel {
    private let word: Word

    let wordTitle: String
    let partOfSpeech: String
    let definition: String
    let synonyms: String?
    let antonyms: String?
    let examples: String?

    init(word: Word) {
        self.word = word

        self.wordTitle = word.word
        self.partOfSpeech = word.partOfSpeech
        self.definition = word.definition
        self.synonyms = word.synonyms?.joined(separator: "\n")
        self.antonyms = word.antonyms?.joined(separator: "\n")
        self.examples = word.examples?.joined(separator: "\n")
    }
}
