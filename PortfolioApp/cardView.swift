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
                .foregroundColor(.green)
        }
    }
}
struct cardView_Previews: PreviewProvider {
    static var previews: some View {
        cardView()
    }
}
