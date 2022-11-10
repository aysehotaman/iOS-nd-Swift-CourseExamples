//
//  DetailsVC.swift
//  GreensBook
//
//  Created by Ayşe Hotaman on 8.11.2022.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var characterAge: UILabel!
    @IBOutlet weak var characterSpecies: UILabel!
    @IBOutlet weak var characterGender: UILabel!
    
    var selectedCharacter: Character?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 0.5647058824, green: 0.6784313725, blue: 0.8117647059, alpha: 1)
        
        characterName.text = selectedCharacter?.name
        characterAge.text = selectedCharacter?.age
        characterGender.text = selectedCharacter?.gender
        characterSpecies.text = selectedCharacter?.species
        characterImage.image = selectedCharacter?.image
    }

}
