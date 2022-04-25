//
//  MoviesViewController.swift
//  Takkellapati_Movies
//
//  Created by Takkellapati,Venkata Prabhakar on 4/21/22.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moviesr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        cell.assignMovie(with: items!.movies[indexPath.row])
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        movieNameLabel.text = "Movie Title: \(items!.movies[indexPath.row].title)"
        movieRatingLabel.text = "Year released: \(items!.movies[indexPath.row].releasedYear)"
        movieBoxOfficeLabel.text = "Movie Rating: \(items!.movies[indexPath.row].movieRating)"
        movieYearLabel.text = "Box office revenue: \(items!.movies[indexPath.row].boxOffice)"
        moviePlotLabel.text = "Movie Plot: \(items!.movies[indexPath.row].moviePlot)"
        movieCastLabel.text = "Movie Cast: \(items!.movies[indexPath.row].cast)"
        }
    
    var items : Genre?
    var moviesr = movieList
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var moviePlotLabel: UILabel!
    @IBOutlet weak var movieCastLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.delegate = self
                collectionViewOutlet.dataSource = self
        print(items)
        // Do any additional setup after loading the view.
       
    }
    

    

}
