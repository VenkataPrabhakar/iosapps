//
//  ViewController.swift
//  DiscountMultiController
//
//  Created by Takkellapati,Venkata Prabhakar on 3/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Amount: UITextField!
    
    
    @IBOutlet weak var discount: UITextField!
    var priceAfterDiscount = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalcDiscountButton(_ sender: Any) {
        //Read the values and convert to double
        var amount = Double(Amount.text!)
        var discountRate = Double(discount.text!)
        
        priceAfterDiscount = amount! - (amount!*discountRate!/100)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegve"{
            var destination = segue.destination as! ResultViewController
            destination.amount = Amount.text!
            destination.discrate = discount.text!
            destination.priceAfterDisc = String (priceAfterDiscount)
        }
    }
    
}

