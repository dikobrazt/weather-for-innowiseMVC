//
//  Networking.swift
//  TWeather2
//
//   Created by Vladislav Tuleiko on 19.04.22.


import Foundation
import CoreLocation



final class Networking{
    
    
    
    let LM = CLLocationManager()
    private let API_KEY: String = "fb4c711f11bed78b124e2b22d74d9792"
    public var completionHandler: ((MainModel) -> Void)?
    var weatherData = WeatherData()
    var delegate: ErrorDelegationProtocol?
    func networking(latitude: Double, longitude: Double) {
            let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?lat=\(latitude.description)&lon=\(longitude.description)&lang=ru&appid=\(API_KEY)&units=metric")
            
            if url != nil{
                let session = URLSession.shared
                let task = session.dataTask(with: url!) { data, response, error in
                    if error == nil{
                        do{
                            self.weatherData = try JSONDecoder().decode(WeatherData.self, from: data!)
                            //self.delegate?.updateInterface(self, with: self.weatherData)
                           
                               self.completionHandler?(MainModel.init(weatherData: self.weatherData))
                               
                           
                            
                        }catch{
                            self.delegate?.setUpErrorAlert(errorDescriprion: error.localizedDescription)
                        }
                    }else{
                        self.delegate?.setUpErrorAlert(errorDescriprion: error?.localizedDescription ?? "We have problems...")
                        return
                    }
                }
                task.resume()
            }else{
                self.delegate?.setUpErrorAlert(errorDescriprion: "Weather not found")
            }
     }
}

