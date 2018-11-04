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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListViewControllerTableViewCell
        cell.bathroomName.text = list[indexPath.row].getName()
        cell.rating.text = String(list[indexPath.row].rating)
        
        return(cell)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadData()
    }
    
    /* Reloads data each time this VC is active */
    func loadData() {
        tableView.reloadData()
    }
    
}

