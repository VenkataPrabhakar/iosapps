//
//  MovieCollectionViewCell.swift
//  MovieCollectionViewApp
//
//  Created by Takkellapati,Venkata Prabhakar on 4/12/22.
//

import UIKit



class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    func assignMovie(_ movie: Movie){
        ImageViewOutlet.image = movie.image
    }
}
