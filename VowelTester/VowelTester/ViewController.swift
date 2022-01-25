//
//  ViewController.swift
//  VowelTester
//
//  Created by Takkellapati,Venkata Prabhakar on 1/25/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Text: UITextField!
    
    @IBOutlet weak var DisplayLABEL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Button(_ sender: Any) {
        var text1=Text.text!
        if (text1.contains("a")||text1.contains("e")){
            DisplayLABEL.text="Enter the text contains vowels."
        }
        else{
            DisplayLABEL.text="There are no vowels in the text"
        }
    }
    
}

