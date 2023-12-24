//
//  ViewController.swift
//  FilmTableView
//
//  Created by Нурсат Шохатбек on 24.12.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var GenresLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var DirectorLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
   var film = Film()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLabel.text = film.title
        infoLabel.text = film.info
        GenresLabel.text = film.genres
        yearLabel.text = film.year
        DirectorLabel.text = film.director
        imageView.image = UIImage(named: film.picture)
    }


}

