//
//  DetailContentView.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/6/22.
//

import SwiftUI

struct DetailContentView: View {
    let word: Word
    private let viewModel: DetailViewModel

    init(word: Word) {
        self.word = word
        self.viewModel = DetailViewModel(word: word)
    }

    var body: some View {
        ZStack {
            Color.background1
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    DetailView(type: .definition, bodyText: viewModel.definition, highlightText: viewModel.partOfSpeech)

                    if let synonyms = viewModel.synonyms {
                        DetailView(type: .synonym, bodyText: synonyms, highlightText: nil)
                    }

                    if let antonyms = viewModel.antonyms {
                        DetailView(type: .antonym, bodyText: antonyms, highlightText: nil)
                    }

                    if let examples = viewModel.examples {
                        DetailView(type: .exampleUsage, bodyText: examples, highlightText: nil)
                    }

                    Spacer()
                }
            }
            .padding()
        }
        .navigationTitle(word.word)
        .navigationBarHidden(false)
    }
}

struct DetailContentView_Previews: PreviewProvider {
    static var previews: some View {
        let word = Word(
            word: "test",
            definition: "blah blah definition blah",
            partOfSpeech: "noun",
            synonyms: ["exam"],
            antonyms: nil,
            examples: ["ACT", "SAT", "Uniform Bar Examination (UBE)"])
        DetailContentView(word: word)
    }
}
