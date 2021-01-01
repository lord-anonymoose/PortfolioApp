//
//  ContentView.swift
//  PortfolioApp
//
//  Created by Philipp on 01.01.2021.
//

import SwiftUI

struct cardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.green)
            VStack (alignment: .leading)
            {
                HStack (alignment: .top)
                {
                    Image("ChristmasPhil")
                        .resizable()
                        .frame(
                            width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.all)
                }
            }
        }
    }
}

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
            Text("Hello, world!")
                .padding()
            cardView()
                .padding(.all)
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
