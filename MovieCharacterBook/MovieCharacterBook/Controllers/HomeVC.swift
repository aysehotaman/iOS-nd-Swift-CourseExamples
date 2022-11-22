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
    
    var howlImages = [UIImage]()
    var calciferImages = [UIImage]()
    var sophieImages = [UIImage]()
    var justinImages = [UIImage]()
    var heenImages = [UIImage]()
    var witchImages = [UIImage]()
    var markiImages = [UIImage]()
    var sulimanImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let imageView = UIImageView(image: UIImage(named: "background"))
        imageView.contentMode = .scaleAspectFill
        tableView.backgroundView = imageView
        
        self.view.backgroundColor = #colorLiteral(red: 0.5647058824, green: 0.6784313725, blue: 0.8117647059, alpha: 1)
        
        self.title = "Howl's Moving Castle (Movie)"
        
        calciferImages = [#imageLiteral(resourceName: "calcifer"), #imageLiteral(resourceName: "calcifer")]
        howlImages = [#imageLiteral(resourceName: "howl"), #imageLiteral(resourceName: "howl2"), #imageLiteral(resourceName: "howl3")]
        sophieImages = [#imageLiteral(resourceName: "sophie2"), #imageLiteral(resourceName: "sophie"), #imageLiteral(resourceName: "sophie3")]
        justinImages = [#imageLiteral(resourceName: "justin"), #imageLiteral(resourceName: "justin2")]
        witchImages = [#imageLiteral(resourceName: "witch1"), #imageLiteral(resourceName: "witch")]
        markiImages = [#imageLiteral(resourceName: "marki"), #imageLiteral(resourceName: "marki2")]
        sulimanImages = [#imageLiteral(resourceName: "sulliman"), #imageLiteral(resourceName: "sulliman2")]
        heenImages = [#imageLiteral(resourceName: "heen2"), #imageLiteral(resourceName: "heen")]
        
        // character objects
        
        let howl = Character(nameInit: "Howl Jenkins Pendragon", ageInit: "27", speciesInit: "Wizard", genderInit: "Male", imageInit: howlImages)
        let sophie = Character(nameInit: "Sophie Hatter", ageInit: "18", speciesInit: "Human", genderInit: "Female", imageInit: sophieImages)
        let calcifer = Character(nameInit: "Calcifer", ageInit: "Unknown", speciesInit: "Fire Demon", genderInit: "Male", imageInit: calciferImages)
        let justin = Character(nameInit: "Turnip Head/Prince Justin", ageInit: "20-30", speciesInit: "Scarecrow/Human", genderInit: "Male", imageInit: justinImages)
        let witch = Character(nameInit: "Witch of the Waste", ageInit: "59", speciesInit: "Witch/Human", genderInit: "Female", imageInit: witchImages)
        let marki = Character(nameInit: "Marki", ageInit: "10", speciesInit: "Human", genderInit: "Male", imageInit: markiImages)
        let suliman = Character(nameInit: "Madame Suliman", ageInit: "50s", speciesInit: "Human", genderInit: "Female", imageInit: sulimanImages)
        let heen = Character(nameInit: "Heen", ageInit: "Unkown", speciesInit: "Dog", genderInit: "Male", imageInit: heenImages)
        
        characters.append(howl)
        characters.append(sophie)
        characters.append(calcifer)
        characters.append(justin)
        characters.append(witch)
        characters.append(marki)
        characters.append(suliman)
        characters.append(heen)
        
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

