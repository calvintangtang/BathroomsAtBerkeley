//
//  FirstViewController.swift
//  BathroomsAtBerkeley
//
//  Created by Calvin Tang on 11/3/18.
//  Copyright © 2018 Team :o. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    // ["Moffitt Library", "Dwinelle Hall", "Soda Hall", "Doe Library", "Bancroft Library"]
    let bathroomList = Database._instance.bathrooms
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set initial location in Moffit Library
        let initialLocation = CLLocation(latitude: 37.872574, longitude: -122.260566)
        centerMapOnLocation(location: initialLocation)
        
        for b in bathroomList {
            let pin = MKPointAnnotation()
            pin.title = b.name
            pin.coordinate = b.coordinate
            mapView.addAnnotation(pin)
        }
    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: regionRadius,
                                                  longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }



}

