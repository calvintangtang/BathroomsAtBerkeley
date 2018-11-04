//
//  WriteReviewViewController.swift
//  BathroomsAtBerkeley
//
//  Created by Calvin Tang on 11/4/18.
//  Copyright © 2018 Team :o. All rights reserved.
//

import UIKit
class WriteReviewViewController: UIViewController {
    @IBOutlet weak var reviewText: UITextView!
    
    @IBAction func submitButton(_ sender: Any) {
        self.submitReview(name: "Moffitt Library", rating: 3.0, reviewText: reviewText.text)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func submitReview(name:String, rating:Double, reviewText:String) {
        Database._instance.addReview(name: name, rating: rating, reviewText: reviewText, author: "default")
    }
}
