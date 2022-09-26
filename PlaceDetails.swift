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
        ScrollView {
            Image("caféCraft")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
            Text(place.name)
                .font(.title)
            Text(place.address)
                .font(.headline)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
                .frame(width: UIScreen.main.bounds.width * 0.95, height: UIScreen.main.bounds.height * 0.25)
            
            if !place.url.isEmpty {
                HStack {
                    Text("Find more about")
                    Link(place.name, destination: URL(string: place.url)!)
                }
                            
            }
           
            Spacer()
                }
        
    }
}

struct PlaceDetails_Previews: PreviewProvider {
    static var previews: some View {
        PlaceDetails(place: places[0])
    }
}
