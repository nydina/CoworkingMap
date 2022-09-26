//
//  Place.swift
//  CoworkingMap
//
//  Created by Dina Andrianarijaona on 26/09/2022.
//
import MapKit
import Foundation
struct Place: Identifiable, Decodable {
    let id: Int
    let name: String
    let lat: Double
    let lon: Double
    let address: String
    let type: PlaceTypeEnum
    let url: String
    var wifi: Bool
    let thumbnail: String
    
    enum PlaceTypeEnum: String, Decodable {
        case coffee, coworking, coffeeCoworking = "coffee / coworking"
        
    }
}

func load<T: Decodable>(_ filename: String) -> T {
let data: Data
guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
else {
fatalError("Couldn't find \(filename) in main bundle.")
}
do {
data = try Data(contentsOf: file)
} catch {
fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
}
do {
let decoder = JSONDecoder()
return try decoder.decode(T.self, from: data)
} catch {
fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
}
}

var places: [Place] = load("places.json")


