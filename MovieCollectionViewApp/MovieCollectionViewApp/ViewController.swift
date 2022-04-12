//
//  ViewController.swift
//  MovieCollectionViewApp
//
//  Created by Takkellapati,Venkata Prabhakar on 4/12/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return the number of movies
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //create acell and typecast with moviecollectionviewcell
        let cell =
        CollectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        //assign movies to cell
        cell.assignMovie(movies[indexPath.row])
        //return the cell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleOutlet.text = "Movie title: \(movies[indexPath.row].title)"
        yearReleasedOutlet.text = "Year Released: \(movies[indexPath.row].releasedYear)"
        ratingOutlet.text = "Ratings: \(movies[indexPath.row].movieRating)"
        revenueOutlet.text = "Revenue: \(movies[indexPath.row].boxOffice)"
    }
    @IBOutlet weak var CollectionViewOutlet: UICollectionView!
    
    
    @IBOutlet weak var titleOutlet: UILabel!
    
    @IBOutlet weak var yearReleasedOutlet: UILabel!
    
    @IBOutlet weak var revenueOutlet: UILabel!
    
    @IBOutlet weak var ratingOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CollectionViewOutlet.delegate = self
        CollectionViewOutlet.dataSource = self
    }


}

