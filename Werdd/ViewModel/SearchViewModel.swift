//
//  SearchViewModel.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/5/22.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var results: [Word] = []


    @MainActor func searchWords(query: String) {
        Task.init {
            results = WordDataStore.shared.searchWords(query: query)
        }
    }
}
