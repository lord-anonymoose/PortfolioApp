//
//  ContentView.swift
//  PortfolioApp
//
//  Created by Philipp on 01.01.2021.
//

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

struct cardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.green)
        }
    }
}

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    cardView()
                        .padding(.all)
                    avatarView(image: "ChristmasPhil")
                        .padding(.all)
                }
            }
                .navigationTitle("About me")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
