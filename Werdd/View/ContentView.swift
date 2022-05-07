//
//  ContentView.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LandingContentView()
                .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
