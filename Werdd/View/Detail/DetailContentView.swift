//
//  DetailContentView.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/6/22.
//

import SwiftUI

struct DetailContentView: View {
    let word: Word

    var body: some View {
        ZStack {
            Color.background1
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    if let definition = word.definition, let partOfSpeech = word.partOfSpeech {
                        DetailView(type: .definition, bodyText: definition, highlightText: partOfSpeech)
                    }

                    if let synonyms = word.synonyms {
                        let body = synonyms.joined(separator: "\n")
                        DetailView(type: .synonym, bodyText: body, highlightText: nil)
                    }

                    if let antonyms = word.antonyms {
                        let body = antonyms.joined(separator: "\n")
                        DetailView(type: .antonym, bodyText: body, highlightText: nil)
                    }

                    if let examples = word.examples {
                        let body = examples.joined(separator: "\n")
                        DetailView(type: .exampleUsage, bodyText: body, highlightText: nil)
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
