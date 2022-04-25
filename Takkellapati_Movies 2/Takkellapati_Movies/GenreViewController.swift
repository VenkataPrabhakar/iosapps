//
//  ViewController.swift
//  Takkellapati_Movies
//
//  Created by Takkellapati,Venkata Prabhakar on 4/21/22.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = moviel[indexPath.row].category
        return cell
    }
    
    //var genre = Genre()
    
    var moviel = movieList

    @IBOutlet weak var genreTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Genre"
        // Do any additional setup after loading the view.
        genreTableView.delegate = self
        genreTableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "movieSegue"{
            let destination = segue.destination as! MoviesViewController
            destination.items = moviel[(genreTableView.indexPathForSelectedRow?.row)!]
        
        }
    }

}

