//
//  ViewController.swift
//  tableview2019_3
//
//  Created by Nosferatu on 29/01/2019.
//  Copyright © 2019 luissancar. All rights reserved.
//


//  reciclerview ///
import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let data:[String]=["fila 1","fila 2","fila 3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text=data[indexPath.row]
        return cell
    }
    
}
