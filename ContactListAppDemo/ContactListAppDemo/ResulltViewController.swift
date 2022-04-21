//
//  ResulltViewController.swift
//  ContactListAppDemo
//
//  Created by Takkellapati,Venkata Prabhakar on 4/21/22.
//

import UIKit

class ResulltViewController: UIViewController {
    @IBOutlet weak var phoneNumOutlet: UILabel!
    
    @IBOutlet weak var emailOutlet: UILabel!
    var phoneNum = 0
    var email = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumOutlet.text = "\(phoneNum)"
        emailOutlet.text = email
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
