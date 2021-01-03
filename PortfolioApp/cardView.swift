//
//  cardView.swift
//  PortfolioApp
//
//  Created by Philipp on 02.01.2021.
//

import SwiftUI

struct cardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .opacity(0.8)
            HStack {
                avatarView(image: PhilippPhotos)
                Spacer()
                VStack (alignment: .leading) {
                    Spacer()
                    HStack {
                        Spacer()
                        Text("Philipp Lazarev, 21")
                            .font(.headline)
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
        .padding(.leading, 10)
        .padding(.trailing, 10)
    }
}
struct cardView_Previews: PreviewProvider {
    static var previews: some View {
        cardView()
    }
}
