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
    @IBOutlet weak var starView: UIView!
    @IBAction func submitButton(_ sender: Any) {
        self.submitReview(name: "Moffitt Library", rating: 3.0, reviewText: reviewText.text)
    }
    
    var displayName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let star = StarReview(frame: CGRect(x:0, y:0, width:200, height:50))
        star.starMarginScale = 0.3 //set the gap/star diameter scale
        star.value = 0
        star.starCount = 5
        star.allowAccruteStars = true //set whether use float or int to present star value
        star.allowEdit = true
        star.addTarget(self, action: Selector("valueChange"), for: .valueChanged)
//        star.addTarget(self, action: "valueChange:", forControlEvents: UIControlEvents.ValueChanged)
        star.starFillColor = UIColor(red:0.24, green:0.58, blue:0.81, alpha:1.0)
        star.starBackgroundColor = UIColor.lightGray
        starView.addSubview(star)
        
        bathroomName.text = displayName
    }
    
    func submitReview(name:String, rating:Double, reviewText:String) {
        Database._instance.addReview(name: name, rating: rating, reviewText: reviewText, author: "default")
    }
}
