//
//  HomeVc.swift

//  Project_MileStone02
//  Created by student on 4/13/22.
//

import UIKit

class HomeVc: UIViewController {

    @IBOutlet var btnAdd: UIButton!
    
    @IBOutlet var lblTravel: UILabel!
    @IBOutlet var lblShopping: UILabel!
    @IBOutlet var lblMedication: UILabel!
    @IBOutlet var lblOther: UILabel!
    

  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    
  
    @IBAction func btnAddAction(_ sender: Any) {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryBoard.instantiateViewController(withIdentifier: "CreateFormVc") as! CreateFormVc
        self.navigationController?.pushViewController(viewController, animated: true)

    }
    
   

}

