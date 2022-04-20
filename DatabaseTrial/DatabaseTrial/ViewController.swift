//
//  ViewController.swift
//  DatabaseTrial
//
//  Created by student on 4/20/22.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Tableviewoutlet.dequeueReusableCell(withIdentifier: "Reusecell", for: indexPath)
        cell.textLabel?.text = contactNames[indexPath.row]
        return cell
    }
    
  
    @IBOutlet weak var Tableviewoutlet: UITableView!
    
    
    var contactNames : [String] = []
    var contacts = NSDictionary()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Tableviewoutlet.delegate = self
        Tableviewoutlet.dataSource = self
        fetchData()
    }
  
    func fetchData(){
        //Get a reference to the database
        let db = Database.database().reference()
        db.observeSingleEvent(of: .value) {snapshot in
            self.contacts = snapshot.value as! NSDictionary
            self.contactNames = self.contacts.allKeys as! [String]
            //reload the data
            self.Tableviewoutlet.reloadData()
            print(self.contacts)
        }
        
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "viewSegue"{
            let destination = segue.destination as! DetailViewController
            let contactClicked = contactNames[(Tableviewoutlet.indexPathForSelectedRow?.row)!]
                       for (key, value) in self.contacts{
                           if key as! String == contactClicked{
                               for (key1, value1) in value as! [String:Any]{
                                   if key1 == "email"{
                                       destination.email = value1 as! String
                                   }
                                   else if key1 == "phone"{
                                       destination.phoneNum = value1 as! Int
                                   }
                               }
                           }
                           print(key)//String
                           print(value)//Dictionary
        }
    
    }
    
    }
}

