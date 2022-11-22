//
//  Characters.swift
//  GreensBook
//
//  Created by Ayşe Hotaman on 8.11.2022.
//

import Foundation
import UIKit

class Character {
    
    var name: String
    var age: String
    var species: String
    var image: [UIImage]
    var gender: String
    
    init(nameInit: String, ageInit: String, speciesInit: String, genderInit: String, imageInit: [UIImage]) {
        name = nameInit
        age = ageInit
        species = speciesInit
        gender = genderInit
        image = imageInit
    }
}
