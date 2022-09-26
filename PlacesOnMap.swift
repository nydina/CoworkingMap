//
//  PlacesOnMap.swift
//  CoworkingMap
//
//  Created by Dina Andrianarijaona on 26/09/2022.
//
import MapKit
import SwiftUI

struct PlacesOnMap: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.85571241521854, longitude: 2.351696387064438), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: places){ place in
                
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.lat, longitude: place.lon)) {
                    NavigationLink(destination: Text(place.name)) {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(.red)
                        
                    }
                }
            }
        }
    }
}

struct PlacesOnMap_Previews: PreviewProvider {
    static var previews: some View {
        PlacesOnMap()
    }
}
