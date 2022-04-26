//
//  DetailViewController.swift
//  omtri
//
//  Created by student on 4/26/22.
//

import UIKit

class DetailViewController: UIViewController {
    var details = [Electronic]
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(details)
//        label1.text = details.
//        label2.text = details?.last
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
