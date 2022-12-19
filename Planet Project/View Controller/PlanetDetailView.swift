//
//  PlanetDetailView.swift
//  Planet Project
//
//  Created by Benjamin Prentiss on 12/15/22.
//

import UIKit

class PlanetDetailView: UIViewController {
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var planetDescriptionLabel: UILabel!
    @IBOutlet weak var planetTypeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ringCountLabel: UILabel!
    @IBOutlet weak var distanceFromSunLabel: UILabel!
    @IBOutlet weak var moonCountLabel: UILabel!
    @IBOutlet weak var planetOrderLabel: UILabel!
    
    @IBOutlet weak var favoriteButton: UIBarButtonItem!
    //Landing pad
    var planet: Planet?
    
    //Gets called when the View Controller comes into view
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        //favortie button's color
        favoriteButton.tintColor = .systemPurple
        //back button's color
        self.navigationController?.navigationBar.tintColor = .systemPurple
        updateFavoriteStatus()
    }
    func updateViews() {
        guard let unwrappedPlanet = planet else {
            print("There was an issue with the planet object that was passed in")
            return
        }
        planetImageView.image = UIImage(named: unwrappedPlanet.imageName)
        nameLabel.text = unwrappedPlanet.planetName
        planetDescriptionLabel.text = unwrappedPlanet.planetDescription
        planetTypeLabel.text = unwrappedPlanet.planetType
        distanceFromSunLabel.text = "\(unwrappedPlanet.distanceFromSun) AU from Sun"
        
        ringCountLabel.text = "Rings: \(unwrappedPlanet.ringCount)"
        moonCountLabel.text = "Moons: \(unwrappedPlanet.moonCount)"
        
        planetOrderLabel.text = "\(unwrappedPlanet.orderNumber)"
    }
    func updateFavoriteStatus() {
        guard let planet = planet else {return}
        
        favoriteButton.image = UIImage(systemName:
                                    planet.isFavorite ?
                                       //true
                                       "star.circle.fill" :
                                       //false
                                       "star.circle"
        )
    }
    
    @IBAction func favoriteButtonTapped(_ sender: Any) {
        guard let planet = planet else {
            return//exit
        }
        PlanetController.updateFavorite(planet: planet)
        updateFavoriteStatus()
    }
    
    
}
