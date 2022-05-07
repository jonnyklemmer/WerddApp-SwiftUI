//
//  RandomViewModel.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/2/22.
//

import Foundation
import SwiftUI
import Combine

class RandomViewModel: ObservableObject {
    @MainActor
    func generateRandomWord() {
        Task.init {
            guard let _ = WordDataStore.shared.getRandomWord() else {
                generateRandomWord()
                return
            }

            // Do something with the word!
        }
    }
}
