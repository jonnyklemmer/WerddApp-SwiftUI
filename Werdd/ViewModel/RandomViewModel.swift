//
//  RandomViewModel.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/2/22.
//

import Foundation
import SwiftUI

class RandomViewModel: ObservableObject {
    private var randomWord: Word? {
        didSet {
            guard let safeWord = randomWord else {
                isLoading = true
                return
            }

            word = safeWord.word
            partOfSpeech = safeWord.partOfSpeech
            definition = safeWord.definition
            isLoading = false
        }
    }

    @Published var word: String = ""
    @Published var partOfSpeech: String = ""
    @Published var definition: String = ""
    @Published var isLoading: Bool = true

    @MainActor
    func generateRandomWord() {
        Task.init {
            guard let word = WordDataStore.shared.getRandomWord() else {
                generateRandomWord()
                return
            }
            withAnimation {
                randomWord = word
            }
        }
    }
}
