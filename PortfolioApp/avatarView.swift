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
    @State private var degrees = 0.0
    @State var width:CGFloat = 80
    @State var height:CGFloat = 80
    
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
        Image(images[currentImage])
            .resizable()
            .frame(
                width: width,
                height: height
            )
            .clipShape(Circle())
            .padding(.all, 10)
            .rotation3DEffect(.degrees(degrees), axis: (x: 0, y: 1, z: 0))
            .onTapGesture {
            withAnimation {
                                    self.degrees += 360
                                    self.width = 80 // add other animated stuff here
                                    self.height = 80

                                }
                    changeImage()
            }
    }
}
