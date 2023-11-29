//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Godwin IE on 28/11/2023.
//

import SwiftUI

struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}

struct ContentView: View {
    @State private var results = [Result(trackId: 0, trackName: "", collectionName: "")]
    
    var body: some View {
        ForEach(results, id: \.trackId) { track in
            
            
            VStack(alignment: .leading) {
                Text(track.trackName)
                    .font(.headline.bold())
                
                Text(track.collectionName)
            }
            
        }
        .padding()
        .task {
            await loadData()
        }
    }
    
    func loadData() async {
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("Invalid URL")
            return
        }
        
        do {
            let(data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                results = decodedResponse.results
            }
        } catch {
            print("Invalid data")
        }
        
    }
    
    
}

#Preview {
    ContentView()
}
