//
//  RandomWordView.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/3/22.
//

import SwiftUI

struct RandomWordView: View {
    @StateObject private var viewModel = RandomViewModel()

    var body: some View {
        ZStack {
            Color.foreground1

            VStack(spacing: 6) {
                if viewModel.isLoading {
                    LoadingWordView()
                        .padding([.top, .horizontal], 24)
                } else {
                    WordView(
                        word: viewModel.word,
                        partOfSpeech: viewModel.partOfSpeech,
                        definition: viewModel.definition
                    )
                    .padding([.top, .horizontal], 24)
                }

                HStack(alignment: .bottom) {
                    Spacer()

                    Button {
                        generateRandomWord()
                    } label: {
                        Image(systemName: "arrow.clockwise.circle")
                            .resizable()
                            .frame(width: 36, height: 36)
                            .foregroundColor(.white)
                    }
                    .padding([.bottom, .trailing], 12)

                }
            }
        }
        .fixedSize(horizontal: false, vertical: true)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .onAppear() {
            generateRandomWord()
        }
    }

    private func generateRandomWord() {
        viewModel.generateRandomWord()
    }
}

struct RandomWordView_Previews: PreviewProvider {
    static var previews: some View {
        RandomWordView()
    }
}
