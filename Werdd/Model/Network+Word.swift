//
//  Network+Word.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/3/22.
//

import Foundation

extension Network {
    // MARK: - WordResult
    struct WordResult: Codable {
        let definitions: [Definition]?
        let syllables: Syllables?
        let letters: Int?
        let sounds: Int?
    }

    // MARK: - Definition
    struct Definition: Codable {
        let definition: String
        let partOfSpeech: String?
        let similarTo: [String]?
        let typeOf: [String]?
        let synonyms: [String]?
        let antonyms: [String]?
        let examples: [String]?
    }

    // MARK: - Syllables
    struct Syllables: Codable {
        let count: Int
        let list: [String]
    }
}
