//
//  Networking.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 19.04.22.
//

import Foundation
import CoreLocation

//MARK: - Protocol Delegate
protocol NetworkingDelegate: class {
    func updateInterface(_: Networking, with weatherData: WeatherData )
    func setUpAlert(errorDescription: String)
}


var dataGlobal = WeatherData() //sorry


class Networking: NSObject{
    
    weak var delegate: NetworkingDelegate?
    let LM = CLLocationManager()
    let apiKey: String = "fb4c711f11bed78b124e2b22d74d9792"
    var weatherData = WeatherData()

        func networking(latitude: Double, longitude: Double){
            let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?lat=\(latitude.description)&lon=\(longitude.description)&lang=ru&appid=\(apiKey)")
            
            if url != nil{
                let session = URLSession.shared
                let task = session.dataTask(with: url!) { data, response, error in
                    if error == nil{
                        do{
                            self.weatherData = try JSONDecoder().decode(WeatherData.self, from: data!)
                            self.delegate?.updateInterface(self, with: self.weatherData)
                            dataGlobal = self.weatherData
                        }catch{
                            self.delegate?.setUpAlert(errorDescription: error.localizedDescription)
                        }
                    }else{
                        self.delegate?.setUpAlert(errorDescription: error!.localizedDescription)
                        return
                    }
                }
                task.resume()
            }else{
                self.delegate?.setUpAlert(errorDescription: "Weather not found")
            }
     }
}


//MARK: - Location ext
extension Networking{
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
            self.delegate?.setUpAlert(errorDescription: "Turn on your location services")      
        }
    }
}



//MARK: - Location Delegate ext
extension Networking: CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let lastLocation = locations.last{
             networking(latitude: lastLocation.coordinate.latitude, longitude: lastLocation.coordinate.longitude)
                print(lastLocation.coordinate.latitude, lastLocation.coordinate.longitude)
        }else{
            print("Loc")
        }
    }
}
