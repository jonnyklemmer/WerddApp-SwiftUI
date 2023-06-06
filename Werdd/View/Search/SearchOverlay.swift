//
//  SearchOverlay.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/3/22.
//

import SwiftUI

struct SearchOverlay: View {
    @State var searchText = ""
    @StateObject var viewModel = SearchViewModel()

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.background2)
                .cornerRadius(30, corners: [.topLeft, .topRight])


            VStack {
                SearchBar(text: $searchText, action: searchWords)
                    .padding(.top)
                    .padding(.horizontal, 20)

                Spacer()

                List(viewModel.results) { result in
                    NavigationLink(destination: DetailContentView(word: result)) {
                        SearchWordView(
                            word: result.word,
                            partOfSpeech: result.partOfSpeech,
                            definition: result.definition
                        )
                    }
                    .isDetailLink(false)
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.background2)
                }
                .listStyle(PlainListStyle())
            }
        }
    }

    private func searchWords() {
        viewModel.searchWords(query: searchText)
    }
}

struct SearchOverlay_Previews: PreviewProvider {
    static var previews: some View {
        SearchOverlay(searchText: "App", viewModel: SearchViewModel())
    }
}
