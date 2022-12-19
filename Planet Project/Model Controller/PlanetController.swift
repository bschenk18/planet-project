//
//  PlanetController.swift
//  Planet Project
//
//  Created by Benjamin Prentiss on 12/13/22.
//

import Foundation

struct PlanetController {
    
   static let planets: [Planet] = [
        Planet(planetName: "Mercury", planetDescription: "Roman god of speed", orderNumber: 1, planetType: PlanetType.terrestrial.rawValue, moonCount: 0, ringCount: 0, distanceFromSun: 0.4),
        
        Planet(planetName: "Venus", planetDescription: "Roman goddess of low",orderNumber: 2, planetType: PlanetType.terrestrial.rawValue, moonCount: 0, ringCount: 0, distanceFromSun: 0.7),
        
        Planet(planetName: "Earth", planetDescription: "The ground", orderNumber: 3, planetType: PlanetType.terrestrial.rawValue, moonCount: 1, ringCount: 0, distanceFromSun: 1.0),
        
        Planet(planetName: "Mars", planetDescription: "Roman god of war", orderNumber: 4, planetType: PlanetType.terrestrial.rawValue, moonCount: 2, ringCount: 0, distanceFromSun: 1.5),
        
        Planet(planetName: "Jupiter", planetDescription: "King of the Roman gods", orderNumber: 5, planetType: PlanetType.gasGiant.rawValue, moonCount: 79, ringCount: 4, distanceFromSun: 5.2),
        
        Planet(planetName: "Saturn", planetDescription: "Father of Jupiter", orderNumber: 6, planetType: PlanetType.gasGiant.rawValue, moonCount: 62, ringCount: 8, distanceFromSun: 9.5),
        
        Planet(planetName: "Uranus", planetDescription: "Greek god of the sky", orderNumber: 7, planetType: PlanetType.iceGiant.rawValue, moonCount: 27, ringCount: 13, distanceFromSun: 19.8),
        
        Planet(planetName: "Neptune", planetDescription: "Roman god of the sea", orderNumber: 8, planetType: PlanetType.iceGiant.rawValue, moonCount: 14, ringCount: 5, distanceFromSun: 30.1)
    ]
    
    //Updates the isFavorite bool value of a planet
    static func updateFavorite(planet: Planet) {
        planet.isFavorite = !planet.isFavorite
    }
}
