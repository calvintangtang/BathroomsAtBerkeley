//
//  ReviewPageViewController.swift
//  BathroomsAtBerkeley
//
//  Created by Calvin Tang on 11/4/18.
//  Copyright © 2018 Team :o. All rights reserved.
//

import UIKit
import StarReview

class ReviewPageViewController: UIViewController {
    @IBOutlet weak var starView: UIView!
    @IBOutlet weak var bathroomName: UILabel!
    @IBOutlet weak var locationName: UILabel!
    @IBOutlet weak var hours: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let star = StarReview(frame: CGRect(x:0, y:0, width:200, height:50))
        star.starMarginScale = 0.3 //set the gap/star diameter scale
        star.value = 2.5
        star.starCount = 5
        star.allowAccruteStars = true //set whether use float or int to present star value
        star.starFillColor = UIColor(red:0.24, green:0.58, blue:0.81, alpha:1.0)
        star.starBackgroundColor = UIColor.lightGray
        starView.addSubview(star)

        self.bathroomName.text = "Sample Name"
        self.locationName.text = "I changed this"
    }
}
