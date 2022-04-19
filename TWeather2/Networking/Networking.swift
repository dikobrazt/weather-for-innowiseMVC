//
//  Networking.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 19.04.22.
//

import Foundation

 //MARK: - Protocols Delegate
protocol NetworkingDelegate: class {
    func updateInterface(_: Networking, with weatherData: WeatherData )
}




class Networking{
    
    weak var delegate: NetworkingDelegate?
   
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
                            print(self.weatherData)
//MARK: - Data complete
                            self.delegate?.updateInterface(self, with: self.weatherData)
                            dataGlobal = self.weatherData
                            
                            print("OKKK")
                        }catch{
                            print("Catch error \(error.localizedDescription)")
                            //self.delegateForAlert?.setUpAlert(errorDescription: error.localizedDescription)
                        }
                    }else{
                        print("Error DataTask \(String(describing: error?.localizedDescription))")
                        //self.delegateForAlert?.setUpAlert(errorDescription: error!.localizedDescription)
                        return
                    }
                }
                task.resume()
            }else{
                print("Incorrect URL")
            }
     }
}
