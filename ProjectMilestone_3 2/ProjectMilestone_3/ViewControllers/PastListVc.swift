//
//  PastListVc.swift

//  Project_MileStone02
//  Created by student on 4/13/22.
//

import UIKit

class PastListVc: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblViewForm: UITableView!
    
    var arrayAll = [[String]]()
    var filterArray = [[String]]()
    var dateFormator = DateFormatter()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.filterArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //Reply
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommonTableViewCell") as! CommonTableViewCell
        let objForm = self.filterArray[indexPath.row]
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
        arrayAll.removeAll()
        filterArray.removeAll()

        arrayAll = arrayTravelForm + arrayShoppingForm + arrayMedicationForm +  arrayOtherForm
        dateFormator.dateFormat = "MM/dd/yyyy"
        let calendar = Calendar.current

        for object in arrayAll {
            let newObject = object
            let dateValue = dateFormator.date(from: newObject[3])
            if((!calendar.isDateInToday(dateValue!)) && dateValue!.timeIntervalSince1970 < Date().timeIntervalSince1970){
                filterArray.append(object)
            }
        }
        
        tblViewForm.reloadData()
        
        
    }
}
