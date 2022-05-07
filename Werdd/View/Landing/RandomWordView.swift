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
        Text("RandomWordView")
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
