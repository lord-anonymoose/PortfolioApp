//
//  avatarView.swift
//  PortfolioApp
//
//  Created by Philipp on 01.01.2021.
//

import Foundation
import SwiftUI

struct avatarView: View {
    var image: String
    var width:CGFloat = 100
    var height:CGFloat = 100.0
    var body: some View {
        Image(image)
            .resizable()
            .frame(
                width: width,
                height: height
            )
            .clipShape(Circle())
            .padding(.all, 5)
        }
}
