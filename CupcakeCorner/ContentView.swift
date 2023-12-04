//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Godwin IE on 28/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var order = Order()
    
    var body: some View {
        NavigationStack {
            
            
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
            .frame(width: 100, height: 100)
            
            //
            
            
            Form{
            
                Section{
                    Picker("Select your cake type", selection: $order.type){
                        ForEach(Order.types.indices, id: \.self) {
                            Text(Order.types[$0])
                        }
                    }
                }
                
            }
        }
    }
    
   
}

#Preview {
    ContentView()
}
