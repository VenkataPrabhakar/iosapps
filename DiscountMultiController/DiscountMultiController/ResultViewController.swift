//
//  ResultViewController.swift
//  DiscountMultiController
//
//  Created by Takkellapati,Venkata Prabhakar on 3/22/22.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var EntereAmount: UILabel!
    
    
    @IBOutlet weak var EnterDiscount: UILabel!
    
    
    @IBOutlet weak var PriceAfterDiscount: UILabel!
    
    var amount = ""
    var discrate = ""
    var priceAfterDisc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EntereAmount.text = EntereAmount.text! + amount
        EnterDiscount.text = EnterDiscount.text! + discrate
        PriceAfterDiscount.text = PriceAfterDiscount.text! + priceAfterDisc
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
