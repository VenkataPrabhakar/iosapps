//
//  ViewController.swift
//  omtri
//
//  Created by student on 4/26/22.
//

import UIKit

class ElectronicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return firstArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = firstArray[indexPath.row].first!
                       return cell
    }
    var newProduct = []
    Electronics.append(newProduct)

    var firstArray = Electronic
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.delegate = self
                tableview.dataSource = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                let transition = segue.identifier
                if transition == "itemSegue"{
                    let destination = segue.destination as! DetailViewController
                    destination.details = firstArray[(tableview.indexPathForSelectedRow?.row)!].
                }

    }


}

