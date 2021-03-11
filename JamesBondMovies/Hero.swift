//
//  Hero.swift
//  JamesBondMovies
//
//  Created by Iurie Guzun on 2021-03-11.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import Foundation

import UIKit

// MARK: - Hero

struct Hero {

    // MARK: Properties
    
    let name: String
    let evilScheme: String
    let imageName: String

    static let NameKey = "NameKey"
    static let EvilSchemeKey = "EvilScheme"
    static let ImageNameKey = "ImageNameKey"

    // MARK: Initializer
    
    // Generate a Hero from a three entry dictionary

    init(dictionary: [String : String]) {
        self.name = dictionary[Hero.NameKey]!
        self.evilScheme = dictionary[Hero.EvilSchemeKey]!
        self.imageName = dictionary[Hero.ImageNameKey]!
    }
}

// MARK: - Hero (All Heros)

/**
* This extension adds static variable allHeros. An array of Hero objects
*/

extension Hero {

    // Generate an array full of all of the Heros
    static var allHeros: [Hero] {

        var HeroArray = [Hero]()

        for d in Hero.localHeroData() {
            HeroArray.append(Hero(dictionary: d))
        }

        return HeroArray
    }

    static func localHeroData() -> [[String : String]] {
        return [
            [Hero.NameKey : "Mr. Big", Hero.EvilSchemeKey : "Smuggle heroin.", Hero.ImageNameKey : "Big"],
            [Hero.NameKey : "Ernest Blofeld", Hero.EvilSchemeKey : "Many, many schemes.", Hero.ImageNameKey : "Blofeld"],
            [Hero.NameKey : "Sir Hugo Drax", Hero.EvilSchemeKey : "Nerve gas Earth from the Moon.", Hero.ImageNameKey : "Drax"],
            [Hero.NameKey : "Jaws", Hero.EvilSchemeKey : "Kill Bond with huge metal teeth.", Hero.ImageNameKey : "Jaws"],
            [Hero.NameKey : "Rosa Klebb", Hero.EvilSchemeKey : "Humiliate MI6.", Hero.ImageNameKey : "Klebb"],
            [Hero.NameKey : "Emilio Largo", Hero.EvilSchemeKey : "Steal nuclear weapons", Hero.ImageNameKey : "EmilioLargo"],
            [Hero.NameKey : "Le Chiffre", Hero.EvilSchemeKey : "Beat Bond at poker.", Hero.ImageNameKey : "Lechiffre"],
            [Hero.NameKey : "Odd Job", Hero.EvilSchemeKey : "Kill Bond with a razor hat.", Hero.ImageNameKey : "OddJob"],
            [Hero.NameKey : "Francisco Scaramanga", Hero.EvilSchemeKey : "Kill Bond after assembling a golden gun.", Hero.ImageNameKey : "Scaramanga"],
            [Hero.NameKey : "Raoul Silva", Hero.EvilSchemeKey : "Kill M.", Hero.ImageNameKey : "Silva"],
            [Hero.NameKey : "Alec Trevelyan", Hero.EvilSchemeKey : "Nuke London after killing Bond.", Hero.ImageNameKey : "Trevelyan"],
            [Hero.NameKey : "Auric Goldfinger", Hero.EvilSchemeKey : "Nuke Fort Knox.", Hero.ImageNameKey : "Goldfinger"],
            [Hero.NameKey : "Max Zorin", Hero.EvilSchemeKey : "Destroy Silicon Valley with an earthquake and flood.", Hero.ImageNameKey : "Zorin"]
        ]
    }
}
