//
//  ViewController.swift
//  ContactListAppDemo
//
//  Created by Takkellapati,Venkata Prabhakar on 4/19/22.
//

import UIKit
import FirebaseDatabase
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "Contactcell", for: indexPath)
        cell.textLabel?.text = contactNames[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    var contactNames : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        fetchData()
    }

    func fetchData(){
        //create a reference for database
        let databaseRef = Database.database().reference()
        databaseRef.observeSingleEvent(of: .value) { snapshot in
            let contacts = snapshot.value as! NSDictionary
            
            self.contactNames = contacts.allKeys as! [String]
            //reload the data
            self.tableViewOutlet.reloadData();
            
            
        }
        
    }
}

