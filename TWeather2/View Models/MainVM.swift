//
//  MainVM.swift
//  TWeather2
//
//   Created by Vladislav Tuleiko on 18.04.22.


import Foundation
import CoreLocation


class MainVM: MainVMProtocol{
   
    
    

    
     var weatherData: MainModel?
    //private var weatherData: WeatherData
    private var locationManager: LocationManager = LocationManager()
    var weather: Box<MainModel?> = Box(value: nil)
    
    var country: String{
        return weatherData?.country ?? " "
    }
    
    var city: String{
        return weatherData?.city ?? " "

    }
    
    var temp: String{
        return  Int(round(weatherData?.temp ?? 0 - 273)).description + "°C"
    }
    
    var condition: String{
        return weatherData?.condition ?? " "
    }
    
    var imageNum: Int{
        return weatherData?.imageNum ?? 0
    }
    var humidity: String{
         return (weatherData?.humidity ?? 0).description + " Pa"
    }
    
    var tempMax: String{
       return Int(round(weatherData?.tempMax ?? 0 - 273)).description + " °C"
    }
    
    var pressure: String{
        return (weatherData?.pressure ?? 0).description + " %"
    }
    
    var wind: String{
        return (weatherData?.wind ?? 0).description + " m/s"
    }
}



extension MainVM{
    
    func getWeather(){
        self.locationManager.startLM({ weather in
            self.weatherData = weather
            self.weather.value = weather
        })
    }
    
    func returnForecastVM() -> ForecastVMProtocol? {
        guard let data = weatherData else { return nil }
        return ForecastVM(data: data)
    }
    
    
    
}
