//
//  MovieData.swift
//  Takkellapati_Movies
//
//  Created by Takkellapati,Venkata Prabhakar on 4/21/22.
//

import Foundation
import UIKit

struct Movie{
    let title:String
    let image:UIImage
    let releasedYear:String
    let movieRating:String
    let boxOffice:String
    let moviePlot:String
    let cast:[String]
    
}
struct Genre{
    let category:String
    let movies:[Movie]
}
