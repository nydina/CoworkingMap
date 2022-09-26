//
//  PlaceDetails.swift
//  CoworkingMap
//
//  Created by Dina Andrianarijaona on 26/09/2022.
//

import SwiftUI

struct PlaceDetails: View {
    let place: Place
    var body: some View {
        Text(place.name)
    }
}

struct PlaceDetails_Previews: PreviewProvider {
    static var previews: some View {
        PlaceDetails(place: places[0])
    }
}
