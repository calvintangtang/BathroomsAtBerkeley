//
//  FirstViewController.swift
//  BathroomsAtBerkeley
//
//  Created by Calvin Tang on 11/3/18.
//  Copyright © 2018 Team :o. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    let list = ["Moffitt Library", "Dwinelle Hall", "Soda Hall", "Doe Library", "Bancroft Library"]
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return(cell)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

