//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Godwin IE on 28/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: "https://foundations.projectpythia.org/_images/GitHub-logo.png")) { image in
                    image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                VStack{
                    ProgressView()
                    Text("Placeholder")
                }
            }
            .frame(width: 200, height: 200)
        }
    }
    
   
}

#Preview {
    ContentView()
}
