//
//  SearchWordView.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/6/22.
//

import SwiftUI

struct SearchWordView: View {
    let word: String
    let partOfSpeech: String
    let definition: String

    var body: some View {
        Text("SearchWordView")
    }
}

struct SearchWordView_Previews: PreviewProvider {
    static var previews: some View {
        SearchWordView(word: "preview", partOfSpeech: "verb", definition: "gettin a sneak peek.")
    }
}
