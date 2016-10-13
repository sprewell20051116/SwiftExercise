//
//  ViewController.swift
//  ProjectXC8_10
//
//  Created by GIGIGUN on 12/10/2016.
//  Copyright © 2016 GIGIGUN. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate{
    let locationManager = CLLocationManager();

    @IBOutlet var addressLab: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func refreshBtnClicked(_ sender: AnyObject) {
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        print("locations = \(locValue.latitude) \(locValue.longitude)");
        
        CLGeocoder().reverseGeocodeLocation(manager.location!, completionHandler: {(placemarks, error) -> Void in
            if (error != nil) {
//                print("Reverse geocoder failed with an error" + (error?.localizedDescription)!)
//                completion(answer: "")
            } else if (placemarks?.count)! > 0 {
                let pm = (placemarks?[0])! as CLPlacemark;
                print("Country : \(pm.country!)");
                print("isoCountryCode : \(pm.isoCountryCode!)");
//                print("areasOfInterest : \(pm.areasOfInterest?)");
                print("locality : \(pm.locality!)");
                print("administrativeArea : \(pm.administrativeArea!)");
//                completion(answer: displayLocaitonInfo(pm))
                
                self.addressLab.text = "\(pm.country!), \(pm.administrativeArea!), \(pm.locality!)";
                
                manager.stopUpdatingLocation(); // [Casper] Only update once.
            } else {
                print("Problems with the data received from geocoder.")
//                completion(answer: "")
            }
        })

        
        
        
    }
    
    
//    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
//        CLGeocoder().reverseGeocodeLocation(manager.location, completionHandler: {(placemarks, error)-&gt;Void in
//            if error {
//                println("Reverse geocoder failed with error" + error.localizedDescription)
//                return
//            }
//            
//            if placemarks.count &gt; 0 {
//                let pm = placemarks[0] as CLPlacemark
//                self.displayLocationInfo(pm)
//            } else {
//                println("Problem with the data received from geocoder")
//            }
//        })
//    }
    
    
    func displayLocationInfo(placemark: CLPlacemark) {
//        if placemark != nil {
//            //stop updating location to save battery life
//            locationManager.stopUpdatingLocation()
//            println(placemark.locality ? placemark.locality : "")
//            println(placemark.postalCode ? placemark.postalCode : "")
//            println(placemark.administrativeArea ? placemark.administrativeArea : "")
//            println(placemark.country ? placemark.country : "")
//        }
    }
}

