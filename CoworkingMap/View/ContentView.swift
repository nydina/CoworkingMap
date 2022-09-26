//
//  ContentView.swift
//  CoworkingMap
//
//  Created by Dina Andrianarijaona on 26/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selectDisplay = 0
    var body: some View {
        NavigationView {
            VStack {
                Picker("", selection: $selectDisplay) {
                            Text("Carte").tag(0)
                            Text("Liste").tag(1)
                        }
                        .pickerStyle(.segmented)
                if selectDisplay == 0 {
                    PlacesOnMap()
                } else {
                    PlacesList()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
