//
//  ViewController.swift
//  TestApp
//
//  Created by Takkellapati,Venkata Prabhakar on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var displayField: UILabel!
    @IBAction func onSubmit(_ sender: UIButton) {
        let enteredNumber=Int(TextField.text!)
        if(enteredNumber!%2==0){
            displayField.text = "\(enteredNumber!) is even number"
        }
        else{
            displayField.text = "\(enteredNumber!) is odd number"
        }
        
    }
    
    
    
}

