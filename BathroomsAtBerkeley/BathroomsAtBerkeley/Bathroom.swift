//
//  Bathroom.swift
//  BathroomsAtBerkeley
//
//  Created by Calvin Tang on 11/3/18.
//  Copyright © 2018 Team :o. All rights reserved.
//
import Foundation
enum tags:String {
    case GenderNeutral
    case PrivateStall
    case PrivateBathroom
    case Clean
}
class Bathroom {
    /* Name of location */
    var name:String!
    
    /* Rating of bathroom */
    var rating:Double
    
    /* Total number of reviews */
    var numReviews:Int
    
    /* Array of tags associated with bathroom */
    var tags = [String]()
    
    /* Initializes new bathroom with name NAME and rating
     of 0.0 */
    init (name:String) {
        self.name = name
        self.rating = 0.0
        self.numReviews = 0
    }
    
    /* Returns name of bathroom */
    func getName() -> String {
        return(self.name)
    }
    
    /* Returns rating of bathroom */
    func getName() -> Double {
        return(self.rating)
    }
    
    /* Returns list of tags of bathroom */
    func getTags() -> Array<String> {
        return(self.tags)
    }
    
    func updateRating (newRating:Double) {
        self.numReviews += 1
        self.rating = ((self.rating * Double(self.numReviews)) + newRating) / (Double(numReviews) + 1.0)
    }
}
