//
//  Bathroom.swift
//  BathroomsAtBerkeley
//
//  Created by Calvin Tang on 11/3/18.
//  Copyright © 2018 Team :o. All rights reserved.
//
import Foundation
import MapKit

enum tags:String {
    case GenderNeutral
    case PrivateStall
    case PrivateBathroom
    case Clean
}
class Bathroom {
    /* Name of location */
    var name:String!
    
    /* Coordinates of location */
    var coordinate:CLLocationCoordinate2D
    
    /* Rating of bathroom */
    var rating:Double
    
    /* Total number of reviews */
    var numReviews:Int
    
    /* Array of tags associated with bathroom */
    var tags = [String]()
    
    /* Initializes new bathroom with name NAME and rating
     of 0.0 */
    init (name:String, latitude:Double, longitude:Double) {
        self.name = name
        self.coordinate = CLLocationCoordinate2D(latitude:latitude, longitude:longitude)
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
    
    /* Updates rating number of current REVIEW */
    func updateRating (newRating:Double) {
        self.rating = ((self.rating * Double(self.numReviews)) + newRating) / (Double(numReviews) + 1.0)
        self.numReviews += 1
    }
}
