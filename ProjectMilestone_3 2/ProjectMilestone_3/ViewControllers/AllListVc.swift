//
//  AllListVc.swift

//  Project_MileStone02
//  Created by student on 4/13/22.
//

import UIKit

class AllListVc: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tblViewForm: UITableView!
    var allArray = [[String]]()
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.allArray.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommonTableViewCell") as! CommonTableViewCell
        let objForm = self.allArray[indexPath.row]
        
        cell.lblTitle.text = objForm[0]
        cell.lblDescription.text = objForm[1]
        cell.lblCategory.text = objForm[2]
        cell.lblTime.text = objForm[3]
        
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tblViewForm.delegate = self
        tblViewForm.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        allArray = arrayTravelForm + arrayShoppingForm + arrayMedicationForm +  arrayOtherForm

        tblViewForm.reloadData()
        
        
    }
    
   
    @IBAction func btnBackAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}


