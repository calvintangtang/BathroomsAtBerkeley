//
//  SecondViewController.swift
//  BathroomsAtBerkeley
//
//  Created by Calvin Tang on 11/3/18.
//  Copyright © 2018 Team :o. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    let list = Database._instance.bathrooms
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row].getName()
        return(cell)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

