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
    
    init(planetName: String, planetDescription: String,orderNumber: Int, planetType: String, moonCount: Int, ringCount: Int, distanceFromSun: Double) {
        self.planetName = planetName
        self.planetDescription = planetDescription
        self.imageName = planetName.lowercased()
        self.orderNumber = orderNumber
        self.planetType = planetType
        self.moonCount = moonCount
        self.ringCount = ringCount
        self.distanceFromSun = distanceFromSun
    }
}

enum PlanetType: String {
    case iceGiant = "Ice Giant"
    case gasGiant = "Gas Giant"
    case terrestrial = "Terrestrial"
}
