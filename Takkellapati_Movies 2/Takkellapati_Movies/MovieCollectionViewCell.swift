//
//  MovieCollectionViewCell.swift
//  Takkellapati_Movies
//
//  Created by Takkellapati,Venkata Prabhakar on 4/21/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
   
    @IBOutlet weak var imageView: UIImageView!
 
   
    
    func assignMovie(with movie:Movie){
        imageView.image = movie.image
        
        }
    
}
