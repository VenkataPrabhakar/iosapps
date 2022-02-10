//
//  ViewController.swift
//  CourseApp
//
//  Created by Takkellapati,Venkata Prabhakar on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayimage: UIImageView!
    
    
    @IBOutlet weak var crsno: UILabel!
    
    @IBOutlet weak var crstitle: UILabel!
    
    @IBOutlet weak var semoffer: UILabel!
    
    
    
    @IBOutlet weak var previous: UIButton!
    
  
    @IBOutlet weak var nextbutton: UIButton!
    
    let course=[["img01","44555","Network security","Fall 2022"],
                ["img02","44643","ios","Spring 2022"],
                ["img03","44656","Data Straming","Summer 2022"]]
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Load the first course details (image,course number,semester offered)
        //prvious button should be disabled
        updateUI(imageNumber)
//        displayimage.image=UIImage(named:course[0][0])
//        crsno.text=course[0][1]
//        semoffer.text=course[0][3]
//        crstitle.text=course[0][2]
        previous.isEnabled=false
        
    }

    @IBAction func onClickPrvious(_ sender: UIButton) {
        nextbutton.isEnabled=true
        imageNumber -= 1
        updateUI(imageNumber)
        if(imageNumber == 0){
            previous.isEnabled = false
        }
    }
    
    @IBAction func onClickNext(_ sender: UIButton) {
        imageNumber += 1
        updateUI(imageNumber)
        previous.isEnabled = true
        if(imageNumber == course.count-1){
            nextbutton.isEnabled = false
        }
        
        
    }
    func updateUI(_ imageNumber:Int){
        displayimage.image=UIImage(named:course[imageNumber][0])
        crsno.text=course[imageNumber][1]
        semoffer.text=course[imageNumber][3]
        crstitle.text=course[imageNumber][2]
        
    }
}

