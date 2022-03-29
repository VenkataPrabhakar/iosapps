//
//  DetailsViewController.swift
//  Tableviewapp
//
//  Created by Takkellapati,Venkata Prabhakar on 3/29/22.
//

import UIKit

class DetailsViewController: UIViewController {

    var product : Product?
    
    @IBOutlet weak var displayLabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayLabelOutlet.text = "The Product \((product?.productName)!) is of \((product?.productCategory)!) category"
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
