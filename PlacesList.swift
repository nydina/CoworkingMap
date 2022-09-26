//
//  SwiftUIView.swift
//  CoworkingMap
//
//  Created by Dina Andrianarijaona on 26/09/2022.
//

import SwiftUI

struct PlacesList: View {
    var body: some View {
        NavigationView {
            List(places) { place in
                NavigationLink {
                    PlaceDetails(place: place)
                } label: {
                    Text(place.name)
                }

            }
        }
    }
}

struct PlacesList_Previews: PreviewProvider {
    static var previews: some View {
        PlacesList()
    }
}
