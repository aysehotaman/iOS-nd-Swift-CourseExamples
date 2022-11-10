//
//  ViewController.swift
//  GreensBook
//
//  Created by Ayşe Hotaman on 8.11.2022.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var characters = [Character]()
    var chosenCharacter: Character?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let imageView = UIImageView(image: UIImage(named: "background"))
        imageView.contentMode = .scaleAspectFill
        tableView.backgroundView = imageView
        
        self.view.backgroundColor = #colorLiteral(red: 0.5647058824, green: 0.6784313725, blue: 0.8117647059, alpha: 1)
        
        self.title = "Howl's Moving Castle (Movie)"
        
        // character objects
        
        let howl = Character(nameInit: "Howl Jenkins Pendragon", ageInit: "27", speciesInit: "Wizard", genderInit: "Male", imageInit: UIImage(named: "howl")!)
        let sophie = Character(nameInit: "Sophie Hatter", ageInit: "18", speciesInit: "Human", genderInit: "Female", imageInit: UIImage(named: "sophie")!)
        let calcifer = Character(nameInit: "Calcifer", ageInit: "Unknown", speciesInit: "Fire Demon", genderInit: "Male", imageInit: UIImage(named: "calcifer5")!)
        let justin = Character(nameInit: "Turnip Head/Prince Justin", ageInit: "20-30", speciesInit: "Scarecrow/Human", genderInit: "Male", imageInit: UIImage(named: "justin")!)
        
        characters.append(howl)
        characters.append(sophie)
        characters.append(calcifer)
        characters.append(justin)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = characters[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCharacter = characters[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedCharacter = chosenCharacter
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor(white: 1, alpha: 0.5)
    }
}

