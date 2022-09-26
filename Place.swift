//
//  Place.swift
//  CoworkingMap
//
//  Created by Dina Andrianarijaona on 26/09/2022.
//

import Foundation
struct Place: Identifiable, Decodable {
    let id: Int
    let name: String
    let lat: Double
    let lon: Double
    let address: String
    let type: PlaceTypeEnum
    let url: URL
    var wifi: Bool
    
    enum PlaceTypeEnum: String, Decodable {
        case coffee, coworking, coffeeCoworking = "Coffee / Coworking"
        
    }
}





