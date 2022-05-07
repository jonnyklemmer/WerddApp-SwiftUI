//
//  SearchOverlay.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/3/22.
//

import SwiftUI

struct SearchOverlay: View {
    @StateObject var viewModel = SearchViewModel()
    @State var searchText = ""

    var body: some View {
        Text("SearchOverlay")
    }

    private func searchWords() {
        viewModel.searchWords(query: searchText)
    }
}

struct SearchOverlay_Previews: PreviewProvider {
    static var previews: some View {
        SearchOverlay(viewModel: SearchViewModel(), searchText: "App")
    }
}
