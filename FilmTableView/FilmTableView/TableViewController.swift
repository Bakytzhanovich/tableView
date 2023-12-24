//
//  TableViewController.swift
//  FilmTableView
//
//  Created by Нурсат Шохатбек on 24.12.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arrayFilm = [
        Film(title: "Fast and Furious", filmCountry: "California", picture: "fs", info: "The Fast and the Furious is a 2001 action film directed by Rob Cohen from a screenplay by Gary Scott Thompson, Erik Bergquist, and David Ayer, based on the Vibe magazine article  by Ken Li. The first installment in the Fast & Furious franchise, it stars Paul Walker, Vin Diesel, Michelle Rodriguez, Jordana Brewster, Rick Yune, Chad Lindberg, Johnny Strong, and Ted Levine. In the film, Brian O'Conner (Walker), an LAPD officer, goes undercover in the street racing world to investigate a group of unknown hijackers, believed to be led by Dominic Toretto (Diesel).", year: "2001", genres: "боевик/криминальный фильм", director: "Гэри Скотт Томпсон"),
        Film(title: "Fast and Furious 2", filmCountry: "Neveda", picture: "fast2", info: "A second Fast & Furious film was planned after the box office success of its predecessor in 2001, and was confirmed with the returns of Walker and producer Neal H. Moritz. Vin Diesel and Rob Cohen, the co-star and director of the first film, were unable to return; Gibson and Singleton joined the cast in their absence in 2002. To canonically account for Diesel's departure, the short film The Turbo Charged Prelude for 2 Fast 2 Furious (2003) was produced and released. Principal photography for 2 Fast 2 Furious commenced in September 2002 and lasted until that December, with filming locations including Miami and the surrounding areas in southern Florida.[4][5]", year:  "2003", genres: "боевик/криминальный фильм", director: "Гэри Скотт Томпсон"),
        Film(title: "Fast and Furious 3", filmCountry:  "Tokyo", picture: "fast3", info: "A third Fast & Furious film was confirmed in June 2005, when Lin was selected as director. Morgan was hired after an open call soon after, thus marking the first film in the franchise's longtime association with Lin, Morgan, actor Sung Kang, and composer Brian Tyler.[6][7] Principal photography began in August 2005 and lasted until that November, with filming locations including Los Angeles and Tokyo, making Tokyo Drift the first film in the franchise to feature an international filming location." , year:  "2006", genres: "боевик/криминальный фильм", director: "Гэри Скотт Томпсон"),
        Film(title:  "Naruto", filmCountry: "Tokyo", picture: "naruto", info: " За 12 лет до начала событий, излагаемых в манге, демон-лис напал на Деревню, скрытую в листве (яп. 木ノ葉隠れの里 Конохагакурэ но сато, или просто Коноха[12]). Для спасения Конохи глава селения, Четвёртый Хокагэ, жертвует своей жизнью и запечатывает демона-лиса внутри своего новорождённого сына Наруто.Хокагэ желал, чтобы люди считали Наруто героем, поскольку Наруто сдерживает демона-лиса. Однако жители деревни восприняли Наруто как демона во плоти и возненавидели его. После инцидента Хокагэ запрещает говорить об атаке лиса, и Наруто узнаёт о своей необычности лишь случайно, годы спустя.", year: "2002", genres: "боевые искусства/приключения/фэнтези" ,director: "Масаси Кисимото"),
        Film(title: "Rush Hour", filmCountry: "DC Washignton", picture: "rush" , info: "В последний день британского правления в Гонконге в 1997 году детектив-инспектор Ли из полиции Гонконга проводит рейд на пристани, надеясь арестовать анонимного криминального босса Джантао. Он находит только Сэнга, правую руку Джантао, который сбегает. Ли возвращает многочисленные китайские культурные сокровища, похищенные Джантао, которые он преподносит как прощальный подарок своему уходящему начальству, китайскому консулу Солону Хану и британскому командующему Томасу Гриффину.", year: "1998", genres: "боевик/комедия", director: "Бретт Ратнер")
    ]
    
     override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func addFilm(_ sender: Any) {
        arrayFilm.append(Film(title: "new Film", filmCountry: "new country", picture: "avatar", info: "fjbjbsbdhcbhdvchvcsvcsvcsdvchjdvchdcvhvcdhcvsdcschsdvchsdcvdhscvcvsdhcvdjhcvdhvcdhcvds", year: "new yaar", genres: "new genre", director: "new director"))
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayFilm.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let filmLabel = cell.viewWithTag(1) as! UILabel
        filmLabel.text = arrayFilm[indexPath.row].title
        
        let countryLabel = cell.viewWithTag(2) as! UILabel
        countryLabel.text = arrayFilm[indexPath.row].filmCountry
        
        let imageView = cell.viewWithTag(3) as! UIImageView
        imageView.image = UIImage(named: arrayFilm[indexPath.row].picture)
        
        

        return cell
    }
     
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 81
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
        
        detailVc.film = arrayFilm[indexPath.row]
        navigationController?.show(detailVc, sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            arrayFilm.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
