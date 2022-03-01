//
//  ViewController.swift
//  CoordinateSystem
//
//  Created by Takkellapati,Venkata Prabhakar on 3/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let minX = imageViewOutlet.frame.minX
        let minY = imageViewOutlet.frame.minY
        print("(\(minX),\(minY))")
        
        let maxX = imageViewOutlet.frame.maxX
        let maxY = imageViewOutlet.frame.maxY
        print("(\(maxX),\(maxY))")
        
        let midX = imageViewOutlet.frame.midX
        let midY = imageViewOutlet.frame.midY
        print("(\(midX),\(midY))")
        
        //move the location of the bike image to the upper left corner
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 0
        
        //move the location of the bike image to the upper right corner
        imageViewOutlet.frame.origin.x = 313
        imageViewOutlet.frame.origin.y = 0
        //move the location of the bike image to the lower left corner
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 795
        
        //move the location of the bike image to the lower right corner
        imageViewOutlet.frame.origin.x = 313
        imageViewOutlet.frame.origin.y = 795
        
        //move the loaction to the center of the screen
        imageViewOutlet.frame.origin.x = 156
        imageViewOutlet.frame.origin.y = 397
        
        //move the location to exact mid
        imageViewOutlet.frame.origin.x = 130
        imageViewOutlet.frame.origin.y = 344
        
    }


}

