//
//  SearchBar.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/5/22.
//

import SwiftUI
import UIKit

// MARK: - SearchBar

struct SearchBar: View {
    @Binding var text: String
    var action: (()-> Void)

    @State private var isEditing = true

    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                SearchTextField(text: $text)
            }
            .padding(10)
            .background(Color(.systemGray5))
            .cornerRadius(10)

            Button(action: action) {
                Text("Search")
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""), action: {})
    }
}
