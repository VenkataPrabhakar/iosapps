//
//  DetailViewController.swift
//  DatabaseTrial
//
//  Created by student on 4/20/22.
//

import UIKit

class DetailViewController: UIViewController {
    //var contacts : contactNames?
    
    @IBOutlet weak var displayLabelOutlet: UILabel!
    
    @IBOutlet weak var displayLabelOutlet1: UILabel!
    var phoneNum = 0
      var email = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabelOutlet.text = "\(phoneNum)"
        displayLabelOutlet1.text = email
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
