//
//  WriteReviewViewController.swift
//  BathroomsAtBerkeley
//
//  Created by Calvin Tang on 11/4/18.
//  Copyright © 2018 Team :o. All rights reserved.
//

import UIKit
import StarReview

class WriteReviewViewController: UIViewController {
    @IBOutlet weak var reviewText: UITextView!
    @IBOutlet weak var bathroomName: UILabel!
    @IBOutlet weak var rating: UITextField!
    
    @IBAction func submitButton(_ sender: Any) {
        self.submitReview(name: self.displayName, rating: Double(rating.text!) ?? 0.0, reviewText: reviewText.text)
        self.performSegue(withIdentifier: "unwindToListViewController", sender: self)
    }
    
    var displayName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bathroomName.text = displayName
    }
    
    func submitReview(name:String, rating:Double, reviewText:String) {
        Database._instance.addReview(name: name, rating: rating, reviewText: reviewText, author: "default")
    }
}
