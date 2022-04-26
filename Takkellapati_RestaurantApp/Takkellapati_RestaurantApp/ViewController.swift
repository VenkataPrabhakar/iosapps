//
//  ViewController.swift
//  Takkellapati_RestaurantApp
//
//  Created by Takkellapati,Venkata Prabhakar on 4/26/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  firstArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        cell.textLabel?.text = firstArray[indexPath.row].name
               return cell
            }
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var firstArray = restaurants
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transition = segue.identifier
            if transition == "itemSegue"{
                let destination = segue.destination as! RestaurantDetailsViewController
                destination.details = firstArray[(tableViewOutlet.indexPathForSelectedRow?.row)!]
            }

}
}

