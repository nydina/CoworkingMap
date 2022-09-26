//
//  ContentView.swift
//  CoworkingMap
//
//  Created by Dina Andrianarijaona on 26/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showView = 0
    var body: some View {
        VStack {
                    Picker("Where do I found a coworking place?", selection: $showView) {
                        Text("Carte").tag(0)
                        Text("Liste").tag(1)
                    }
                    .pickerStyle(.segmented)
            if showView == 0 {
                PlacesOnMap()
            } else {
                PlacesList()
            }
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
