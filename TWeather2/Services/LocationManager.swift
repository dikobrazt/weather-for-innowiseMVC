//
//  LocationManager.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 29.04.22.
//

import Foundation
import CoreLocation


class LocationManager: NSObject{
    
    
    
    var networkService: Networking = Networking()
    let LM = CLLocationManager()
    var delegate: ErrorDelegationProtocol?

    func startLM(_ completionHandler: @escaping ((MainModel) -> Void)) {
        networkService.completionHandler = completionHandler
        
        
        LM.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled(){
            LM.delegate = self
            LM.desiredAccuracy = kCLLocationAccuracyKilometer
            LM.distanceFilter = 1000
            LM.showsBackgroundLocationIndicator = true
            LM.pausesLocationUpdatesAutomatically = true
            LM.startUpdatingLocation()
        }else{
            self.delegate?.setUpErrorAlert(errorDescriprion: "Turn on your location services")
        }
    }
}



//MARK: - Location Delegate ext
extension LocationManager: CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let lastLocation = locations.last{
            networkService.networking(latitude: lastLocation.coordinate.latitude, longitude: lastLocation.coordinate.longitude)
                print(lastLocation.coordinate.latitude, lastLocation.coordinate.longitude)
        }else{
            print("Loc")
        }
    }
}
