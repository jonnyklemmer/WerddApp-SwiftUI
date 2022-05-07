//
//  LandingContentView.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/3/22.
//

import SwiftUI

struct LandingContentView: View {
    var body: some View {
        Text("LandingContentView")
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
