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
    let movieList1 = Genre(category:"Drama",
                           movies:[Movie(title:"Evaru",image:UIImage(named: "kgf")!,releasedYear: "2019",movieRating: "8.2",boxOffice: "5.3M",moviePlot: "",cast: []),Movie(title:"KGF-2",image:UIImage(named: "kgf")!,releasedYear: "2021",movieRating: "9.9",boxOffice: "507.3M",moviePlot: "",cast: []),Movie(title:"KGF-2",image:UIImage(named: "kgf")!,releasedYear: "2021",movieRating: "9.9",boxOffice: "507.3M",moviePlot: "",cast: [])])
let movieList2 = Genre(category:"action",
                       movies:[Movie(title:"KGF-2",image:UIImage(named: "kgf")!,releasedYear: "2021",movieRating: "9.9",boxOffice: "507.3M",moviePlot: "",cast: []),Movie(title:"KGF-2",image:UIImage(named: "kgf")!,releasedYear: "2021",movieRating: "9.9",boxOffice: "507.3M",moviePlot: "",cast: []),Movie(title:"KGF-2",image:UIImage(named: "kgf")!,releasedYear: "2021",movieRating: "9.9",boxOffice: "507.3M",moviePlot: "",cast: [])])
let movieList3 = Genre(category:"science",
                       movies:[Movie(title:"KGF-2",image:UIImage(named: "kgf")!,releasedYear: "2021",movieRating: "9.9",boxOffice: "507.3M",moviePlot: "",cast: []),Movie(title:"KGF-2",image:UIImage(named: "kgf")!,releasedYear: "2021",movieRating: "9.9",boxOffice: "507.3M",moviePlot: "",cast: []),Movie(title:"KGF-2",image:UIImage(named: "kgf")!,releasedYear: "2021",movieRating: "9.9",boxOffice: "507.3M",moviePlot: "",cast: [])])
let movieList4 = Genre(category:"socio",
                       movies:[Movie(title:"KGF-2",image:UIImage(named: "kgf")!,releasedYear: "2021",movieRating: "9.9",boxOffice: "507.3M",moviePlot: "",cast: []),Movie(title:"KGF-2",image:UIImage(named: "kgf")!,releasedYear: "2021",movieRating: "9.9",boxOffice: "507.3M",moviePlot: "",cast: []),Movie(title:"KGF-2",image:UIImage(named: "kgf")!,releasedYear: "2021",movieRating: "9.9",boxOffice: "507.3M",moviePlot: "",cast: [])])

let movieList = [movieList1,movieList2,movieList3,movieList4]
