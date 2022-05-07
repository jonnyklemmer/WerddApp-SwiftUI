//
//  HeaderView.swift
//  Werdd
//
//  Created by Jonny Klemmer on 5/3/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("Werdd.")
                .font(.system(size: 36, design: .rounded))
                .fontWeight(.semibold)

            Spacer()

            Image(systemName: "heart.text.square.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.foreground4)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
