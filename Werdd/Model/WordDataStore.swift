//
//  WordManager.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/5/22.
//

import Foundation

class WordDataStore {
    static let shared = WordDataStore()

    private let dictionary: WordDictionary

    init() {
        do {
            guard let data = try WordDataStore.loadWordData() else {
                throw "Missing Data"
            }
            let parsedDictionary = try WordDataStore.parseDictionary(data: data)
            let tuples: [(String, Word)] = parsedDictionary.compactMap({ (key, resultValue) in
                guard let word = Word(word: key, result: resultValue) else { return nil }
                return (key, word)
            })

            dictionary = Dictionary(uniqueKeysWithValues: tuples)

        } catch {
            print("Failed to load words: \(error)")
            dictionary = [:]
        }
    }

    // MARK: - Public API

    func getRandomWord() -> Word? {
        dictionary.values.randomElement()
    }

    func searchWords(query: String) -> [Word] {
        let matches = dictionary.keys.filter { key in
            // Case-insensitive prefix comparison
            key.range(of: query, options: [.anchored, .caseInsensitive]) != nil
        }

        let words: [Word] = matches.compactMap { key in
            guard let word = dictionary[key] else { return nil }

            return word.hasExtraContent ? word : nil
        }

        return words
    }

    // MARK: - Private Helpers

    static private func parseDictionary(data: Data) throws -> [String: Network.WordResult] {
        if let jsonDict = try JSONSerialization.jsonObject(with: data) as? [String: AnyObject] {
            let dictionary = try jsonDict.mapValues { value -> Network.WordResult in
                let data = try JSONSerialization.data(withJSONObject: value)
                let word = try JSONDecoder().decode(Network.WordResult.self, from: data)

                return word
            }

            return dictionary
        }

        return [:]

    }


    static private func loadWordData() throws -> Data? {
        if let bundlePath = Bundle.main.path(forResource: "wordsapi_sample", ofType: "json"),
           let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8)
        {
            return jsonData
        }

        return nil
    }
}
