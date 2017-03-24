//
//  ViewController.swift
//  mapasApplicationX
//
//  Created by Student on 3/22/17.
//  Copyright © 2017 Leonardo Cordeiro. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    var userLocation = CLLocation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.showsUserLocation = true
        
        setupLocationManager()
        addGesture()
        mapView.setUserTrackingMode(MKUserTrackingMode.follow, animated: true)
        
    }


    func setupLocationManager(){
    
        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.startUpdatingLocation()
        
        
        
    }
    
    
    func addGesture(){
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(addAnnotationToMap(gestureRecognizer:)))
        longPress.minimumPressDuration = 1.0
        
        mapView.addGestureRecognizer(longPress)
        
    }
    
    
    func addAnnotationToMap(gestureRecognizer: UIGestureRecognizer) {
    
    
        let touchPoint = gestureRecognizer.location(in: mapView)
        let newCordinate : CLLocationCoordinate2D = mapView.convert(touchPoint, toCoordinateFrom: mapView)
        
        let newAnnotation = MKPointAnnotation()
        newAnnotation.coordinate = newCordinate
        newAnnotation.title = "Veremos"
        newAnnotation.subtitle = String(describing: "Latitude: \(newCordinate.latitude) / Longitude: \(newCordinate.longitude)")
        mapView.addAnnotation(newAnnotation)
    }
    

    
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       
        if locations.count > 0 {
        
            if let location = locations.last {
            
                userLocation = location
                print("Localização atual do usuário = ", userLocation.coordinate)
                
//                let span = MKCoordinateSpanMake(1, 1)
//                let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
//                let region = MKCoordinateRegion(center: center, span: span)
//                mapView.setRegion(region, animated: true)

            }
        }
    }
    
    
}

