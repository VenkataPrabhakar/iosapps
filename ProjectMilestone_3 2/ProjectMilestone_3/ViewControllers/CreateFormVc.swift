//
//  CreateFormVc.swift

//  Project_MileStone02
//  Created by student on 4/13/22.
//

import UIKit


class CreateFormVc: UIViewController, UITextFieldDelegate,UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtCategory: UITextField!
    @IBOutlet weak var txtDataTime: UITextField!
    @IBOutlet weak var txtViewDescription: UITextField!

    var picker_Comman: UIPickerView!
    var picker_Time: UIDatePicker!
    
    var dateFormatorTime = DateFormatter()
    var arrCategory = ["Travel","Shopping","Medication", "Other"]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker_Comman = picker_Normal_Create()
        picker_Comman.delegate = self
        picker_Comman.dataSource = self
        
        picker_Time = picker_Date_Create()
        
        txtDataTime.inputView = picker_Time
        txtCategory.inputView = picker_Comman
        
        addDoneButtonOnCategoryKeyboard()
          addDoneButtonOnDateKeyboard()

    }
    
    func addDoneButtonOnCategoryKeyboard()
    {
       let doneToolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 50))
       doneToolbar.barStyle = UIBarStyle.default


        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(self.doneButtonPickerAction(fieldCurrent:)))

        let items = NSMutableArray()

        items.add(done)

        doneToolbar.items = items as? [UIBarButtonItem]
        doneToolbar.sizeToFit()

        self.txtCategory.inputAccessoryView = doneToolbar

    }

    func addDoneButtonOnDateKeyboard()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 50))
        doneToolbar.barStyle = UIBarStyle.default
        
        
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(self.doneButtonDateAction(fieldCurrent:)))
        
        let items = NSMutableArray()
        
        items.add(done)
        
        doneToolbar.items = items as? [UIBarButtonItem]
        doneToolbar.sizeToFit()
        
        self.txtDataTime.inputAccessoryView = doneToolbar
        
    }
        
    func picker_Normal_Create() -> UIPickerView
    {
        var pickerDateTime: UIPickerView!
        pickerDateTime = UIPickerView(frame:CGRect(x:0, y:0, width:UIScreen.main.bounds.size.width, height:216))
        
        pickerDateTime.backgroundColor = UIColor.white
        return pickerDateTime
        
    }
    
    func picker_Date_Create() -> UIDatePicker
    {
        var pickerDateTime: UIDatePicker!
        pickerDateTime = UIDatePicker(frame:CGRect(x:0, y:0, width:UIScreen.main.bounds.size.width, height:216))
        
        pickerDateTime.backgroundColor = UIColor.white
        
        pickerDateTime.datePickerMode = .date
        pickerDateTime.timeZone = NSTimeZone.local
        if #available(iOS 13.4, *) {
            pickerDateTime.preferredDatePickerStyle = UIDatePickerStyle.wheels
        } else {
            
        }
       
        return pickerDateTime
    }
    
    
    @objc func doneButtonDateAction(fieldCurrent : UITextField){
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        txtDataTime!.text = formatter.string(from: picker_Time.date)
        txtDataTime!.resignFirstResponder()
    }
    
    @objc func doneButtonPickerAction(fieldCurrent : UITextField)
    {
        let title = arrCategory[picker_Comman.selectedRow(inComponent: 0)]
        txtCategory.text = title
        txtCategory!.resignFirstResponder()
    }
    
    @IBAction func btnBackAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnSaveAction(_ sender: Any) {
      
            saveData()
    
    }

    func saveData(){
        
        let dict = [txtTitle.text!, txtViewDescription.text!, txtCategory.text!, txtDataTime.text!] as [String]
        
        if(txtCategory.text! == "Travel"){
            arrayTravelForm.append(dict)
        }
        else if(txtCategory.text! == "Shopping"){
            arrayShoppingForm.append(dict)
        }
        else if(txtCategory.text! == "Medication"){
            arrayMedicationForm.append(dict)
        }
        else if(txtCategory.text! == "Other"){
            arrayOtherForm.append(dict)
        }

        self.navigationController?.popViewController(animated: true)
       
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return arrCategory.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrCategory[row]
    }
    
}
