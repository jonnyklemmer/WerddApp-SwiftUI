//
//  SearchViewModel.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/5/22.
//

import Foundation

class SearchViewModel: ObservableObject {
    @MainActor func searchWords(query: String) {
        Task.init {
            let _ = WordDataStore.shared.searchWords(query: query)
            // Do something with the results!
        }
    }
}
