//
//  ContentView.swift
//  PortfolioApp
//
//  Created by Philipp on 01.01.2021.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        NavigationView {
            ZStack {
                PortfolioApp.background
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    ZStack {
                        cardView()
                    }
                }
                .navigationTitle("About me")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
