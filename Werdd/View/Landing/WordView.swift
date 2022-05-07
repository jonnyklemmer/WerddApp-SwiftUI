//
//  WordView.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/3/22.
//

import SwiftUI

struct WordView: View {
    var body: some View {
        Text("WordView")
    }
}

struct LoadingWordView: View {
    var body: some View {
        WordView()
            .redacted(reason: .placeholder)
            .shimmering()
    }
}

struct WordView_Previews: PreviewProvider {
    static var previews: some View {
        WordView()
    }
}
