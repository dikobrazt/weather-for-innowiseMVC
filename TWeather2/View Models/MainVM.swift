//
//  MainVM.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 18.04.22.
//

import Foundation
import CoreLocation

var dataGlobal = WeatherData()


class MainVM: NSObject{
    
    let LM = CLLocationManager()
    var net = Networking()
    
    func startLM() {
        
        LM.requestWhenInUseAuthorization() //запрос на использование локации
        if CLLocationManager.locationServicesEnabled(){
            LM.delegate = self
            LM.desiredAccuracy = kCLLocationAccuracyKilometer
            LM.distanceFilter = 1000
            LM.showsBackgroundLocationIndicator = true
            LM.pausesLocationUpdatesAutomatically = true // прекращение слежения автоматически
            LM.startUpdatingLocation() //запуск поиска местоположения
            
        }else{
            //setAlertGeolocation()
            print("Turn on your losation services")
        }
    }
    
    
}

extension MainVM: CLLocationManagerDelegate{
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let lastLocation = locations.last{
             net.networking(latitude: lastLocation.coordinate.latitude, longitude: lastLocation.coordinate.longitude)
                print(lastLocation.coordinate.latitude, lastLocation.coordinate.longitude)
        }else{
            print("Loc")
        }
    }
}
