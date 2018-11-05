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
    
    /* Submits new REVIEW to database and segues to list screen */
    @IBAction func submitButton(_ sender: Any) {
        if (Double(rating.text!) ?? 0.0 < 0.0) {
            rating.text = "0.0"
        } else if (Double(rating.text!) ?? 0.0 > 5.0) {
            rating.text = "5.0"
        }
        self.submitReview(name: self.displayName, rating: Double(rating.text!) ?? 0.0, reviewText: reviewText.text)
        self.performSegue(withIdentifier: "unwindToListViewController", sender: self)
    }
    
    var displayName = String()
    
    /* Updates BATHROOM name on review screen */
    override func viewDidLoad() {
        super.viewDidLoad()
        bathroomName.text = displayName
    }
    
    /* Creates REVIEW in database */
    func submitReview(name:String, rating:Double, reviewText:String) {
        Database._instance.addReview(name: name, rating: rating, reviewText: reviewText, author: "default")
    }
}
