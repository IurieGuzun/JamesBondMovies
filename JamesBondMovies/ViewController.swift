//
//  ViewController.swift
//  JamesBondMovies
//
//  Created by Iurie Guzun on 2021-03-11.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: Properties
    
    // Get ahold of some heros, for the table
    // This is an array of Heros instances
    let allHeros = Hero.allHeros

    // MARK: Table View Data Source

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.allHeros.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeroCell")!
        let hero = self.allHeros[(indexPath as NSIndexPath).row]

        // Set the name and image
        cell.textLabel?.text = hero.name
        cell.imageView?.image = UIImage(named: hero.imageName)

        // If the cell has a detail label, we will put the evil scheme in.
        if let detailTextLabel = cell.detailTextLabel {
            detailTextLabel.text = "Scheme: \(hero.evilScheme)"
        }

        return cell
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}

