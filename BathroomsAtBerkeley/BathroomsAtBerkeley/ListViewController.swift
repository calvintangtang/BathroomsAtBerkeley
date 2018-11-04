//
//  SecondViewController.swift
//  BathroomsAtBerkeley
//
//  Created by Calvin Tang on 11/3/18.
//  Copyright © 2018 Team :o. All rights reserved.
//

import UIKit
import Foundation

class ListViewController: UITableViewController {
    let list = Database._instance.bathrooms
    var rowPressed = 0
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        rowPressed = sender.tag
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListViewControllerTableViewCell
        cell.bathroomName.text = list[indexPath.row].getName()
        cell.rating.text = String(list[indexPath.row].rating)
        cell.button.tag = indexPath.row
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
        print("Reloading data")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! ReviewPageViewController
        dest.item = list[rowPressed]
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        self.loadData()
    }
}

