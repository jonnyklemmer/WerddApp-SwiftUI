//
//  Word.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/3/22.
//

import Foundation

typealias WordDictionary = [String: Word]

struct Word: Identifiable {
    let id: UUID = UUID()
    let word: String
    let definition: String
    let partOfSpeech: String
    let synonyms: [String]?
    let antonyms: [String]?
    let examples: [String]?
}

extension Word {
    init?(word: String, result: Network.WordResult) {
        self.word = word

        guard
            let firstResult = result.definitions?.first,
            let partOfSpeech = firstResult.partOfSpeech
        else { return nil }

        self.definition = firstResult.definition
        self.partOfSpeech = partOfSpeech

        self.synonyms = firstResult.synonyms
        self.antonyms = firstResult.antonyms
        self.examples = firstResult.examples
    }

    var hasExtraContent: Bool {
        (synonyms?.isEmpty == false ||
        antonyms?.isEmpty == false ||
        examples?.isEmpty == false)
    }
}
