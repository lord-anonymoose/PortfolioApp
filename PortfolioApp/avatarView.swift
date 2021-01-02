//
//  avatarView.swift
//  PortfolioApp
//
//  Created by Philipp on 01.01.2021.
//

import Foundation
import SwiftUI

struct avatarView: View {
    var images:[String]
    @State private var currentImage = 0
    var width:CGFloat = 100
    var height:CGFloat = 100.0
    
    init (image: [String]) {
        self.images = image
    }
    
    func changeImage() {
        if (currentImage == images.count - 1) {
            currentImage = 0
        } else {
            currentImage += 1
        }
    }
    
    var body: some View {
            Button (action: changeImage)
            {
                Image(images[currentImage])
                    .resizable()
                    .frame(
                        width: width,
                        height: height
                    )
                    .clipShape(Circle())
                    .padding(.all, 10)
            }
    }
}
