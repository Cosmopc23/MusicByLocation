//
//  ContentView.swift
//  MusicByLocation
//
//  Created by Cosmo Page-Croft on 20/03/2024.
//

import SwiftUI


struct ContentView: View {
    let locationHandler = LocationHandler()
    @StateObject private var locationhandler = LocationHandler()
    
    var body: some View {
        VStack {
            Text(locationHandler.lastKnownLocation)
            Spacer()
            Button("Find Music" , action: {
                locationHandler.requestLocation()
            })
        } .onAppear(perform: {
            locationHandler.requestAuthorisation()
        })
        .padding()
        
    }
}

#Preview {
    ContentView()
}
