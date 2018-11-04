//
//  FirstViewController.swift
//  BathroomsAtBerkeley
//
//  Created by Calvin Tang on 11/3/18.
//  Copyright © 2018 Team :o. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    // ["Moffitt Library", "Dwinelle Hall", "Soda Hall", "Doe Library", "Bancroft Library"]
    let bathroomList = Database._instance.bathrooms
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.showsUserLocation = true
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        for b in bathroomList {
            let pin = MKPointAnnotation()
            pin.title = b.name
            pin.coordinate = b.location
            mapView.addAnnotation(pin)
        }
    }
    
}

extension MapViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let lat = locations.last?.coordinate.latitude, let long = locations.last?.coordinate.longitude {
            print("\(lat),\(long)")
            centerMapOnLocation(location: CLLocation(latitude:lat, longitude:long))
        } else {
            print("No coordinates")
            // center map to Moffit Library
            let loc = CLLocation(latitude: 37.872574, longitude: -122.260566)
            centerMapOnLocation(location: loc)
        }
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: 1000,
                                                  longitudinalMeters: 1000)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}
