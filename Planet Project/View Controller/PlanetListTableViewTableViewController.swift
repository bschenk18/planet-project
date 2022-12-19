//
//  PlanetListTableViewTableViewController.swift
//  Planet Project
//
//  Created by Benjamin Prentiss on 12/15/22.
//

import UIKit

class PlanetListTableViewTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Solar System"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = UIColor.white
    }
    //this gets called when ever the view appears :)
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        
        //this is holding our planet object
        let planet = PlanetController.planets[indexPath.row]
        
        //start creating the content
        var newContent = cell.defaultContentConfiguration()
        
        //planet name
        newContent.text = planet.planetName
        newContent.textProperties.color = .label
        newContent.textProperties.font = UIFont.preferredFont(forTextStyle: .headline)
        newContent.textToSecondaryTextVerticalPadding = 4
        
        //planet type
        newContent.secondaryText = planet.planetType
        newContent.secondaryTextProperties.color = .secondaryLabel
        newContent.secondaryTextProperties.font = UIFont.preferredFont(forTextStyle: .subheadline)
        
        //image
        newContent.image = UIImage(systemName: planet.isFavorite ? "circle.fill" : "circle")
        newContent.imageProperties.tintColor = .systemPurple
        newContent.imageToTextPadding = 16
        
        //link up the new content styling the cell
        cell.contentConfiguration = newContent
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //Verify the segue is the correct one, by checking the segue ID
        if segue.identifier == "toDetailView" {
            //Identify where it is we want to segue to
            guard let destinationViewController =
                    segue.destination as? PlanetDetailView else {
                print("There was an error with the destinationViewController")
                return
            }
            //Identify what row was tapped on (the index)
            guard let indexPath = tableView.indexPathForSelectedRow else {
                print("There was an error with obtaining the index path")
                return
            }
            
            //Identiy what it is we want to pass along
            let selectedPlanet = PlanetController.planets[indexPath.row]
            
            //Reception :D Make the pass
            destinationViewController.planet = selectedPlanet
        }
        
    
    }
    

}
