//
//  Review.swift
//  BathroomsAtBerkeley
//
//  Created by Calvin Tang on 11/3/18.
//  Copyright © 2018 Team :o. All rights reserved.
//

import Foundation

class Review {
    /* Name of location */
    var name:String!
    
    /* Rating of review */
    var rating:Double!
    
    /* Paragraph text of review */
    var reviewText:String!
    
    /* Name of author of review */
    var author:String!
    
    /* Initializes a new review instance with NAME and RATING */
    init (name:String, rating:Double, reviewText:String, author:String) {
        self.name = name
        self.rating = rating
        self.reviewText = reviewText
        self.author = author
    }
}
