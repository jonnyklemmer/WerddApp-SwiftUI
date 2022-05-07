//
//  LandingContentView.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/3/22.
//

import SwiftUI

struct LandingContentView: View {
    var body: some View {
        ZStack {
            Color.background1
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 0) {
                VStack {
                    HeaderView()
                    RandomWordView()
                }
                .padding([.leading, .trailing, .bottom], 24)

                Spacer()

                SearchOverlay()
                    .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandingContentView()
                .preferredColorScheme(.light)
            LandingContentView()
                .preferredColorScheme(.dark)
        }
    }
}
