//
//  Planet.swift
//  Planet Project
//
//  Created by Benjamin Prentiss on 12/13/22.
//

import Foundation

/*
planet name
planet description
 planet type
 distance from sun
 ring count
 moon count
 --> planet image
 */

class Planet{
    let planetName: String
    let planetDescription: String
    let imageName: String
    let orderNumber: Int
    let planetType: String
    let moonCount: Int
    let ringCount: Int
    let distanceFromSun: Double
    var isFavorite: Bool //true or false
    //initializer
    init(planetName: String, planetDescription: String,orderNumber: Int, planetType: String, moonCount: Int, ringCount: Int, distanceFromSun: Double, isFavorite: Bool = false) {
        
        self.planetName = planetName
        self.planetDescription = planetDescription
        self.imageName = planetName.lowercased()
        self.orderNumber = orderNumber
        self.planetType = planetType
        self.moonCount = moonCount
        self.ringCount = ringCount
        self.distanceFromSun = distanceFromSun
        self.isFavorite = isFavorite
    }
}
//Planet type description
enum PlanetType: String {
    case iceGiant = "Ice Giant"
    case gasGiant = "Gas Giant"
    case terrestrial = "Terrestrial"
}
//Planet order number
enum PlanetOrder: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
