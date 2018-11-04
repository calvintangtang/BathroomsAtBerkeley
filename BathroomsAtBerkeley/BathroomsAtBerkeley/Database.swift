//
//  Database.swift
//  BathroomsAtBerkeley
//
//  Created by Calvin Tang on 11/3/18.
//  Copyright © 2018 Team :o. All rights reserved.
//

import Foundation
class Database {
    /* Shared instance of database */
    static var _instance = Database()
    
    /* Array of BATHROOM objects in app */
    var bathrooms:Array<Bathroom>
    
    /* Array of REVIEW objects in app*/
    var reviews:Array<Review>
    
    init() {
        self.reviews = [Review]()
        self.bathrooms = [Bathroom]()
        addBathrooms()
    }
    
    /* Add default value bathrooms for testing */
    func addBathrooms() {
        addBathroom(name:"Moffitt Library", latitude: 37.872574, longitude: -122.260566)
        addBathroom(name:"Dwinelle Hall", latitude: 37.8705, longitude: -122.2606)
        addBathroom(name:"Soda Hall", latitude: 37.8756, longitude: -122.2588)
//        self.bathrooms.append(Bathroom(name:"Bancroft Library"))
//        self.bathrooms.append(Bathroom(name:"Martin Luther King Jr. Student Union"))
    }
    
    /* Add BATHROOM object to database */
    func addBathroom(name:String, latitude:Double, longitude:Double) {
        self.bathrooms.append(Bathroom(name:name, latitude:latitude, longitude:longitude))
    }
    
    /* Add REVIEW object to database. Updates BATHROOM review count and updates number of reviews. */
    func addReview(name:String, rating:Double, reviewText:String, author:String) {
        self.reviews.append(Review(name:name, rating:rating, reviewText:reviewText, author:author))
        self.updateBathroomRating(name: name, rating: rating)
    }
    
    /* Returns a review if it exists in the database. If not, returns nil */
    func getReview (name:String, author:String) -> Review? {
        for i in 0..<self.reviews.count {
            if (self.reviews[i].name == name && self.reviews[i].author == author) {
                return self.reviews[i]
            }
        }
        return nil
    }
    
    /* Returns a bathroom if it exists in the database. If not, returns nil */
    func getBathroom (name:String) -> Bathroom? {
        for i in 0..<self.bathrooms.count {
            if (self.bathrooms[i].name == name) {
                return self.bathrooms[i]
            }
        }
        return nil
    }
    
    /* Updates bathroom rating directly in array */
    func updateBathroomRating (name:String, rating:Double) {
        for i in 0..<self.bathrooms.count {
            if (self.bathrooms[i].name == name) {
                self.bathrooms[i].updateRating(newRating: rating)
            }
        }
    }
}
