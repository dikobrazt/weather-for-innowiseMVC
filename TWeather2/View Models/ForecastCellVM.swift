//
//  ForecastCellVM.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 26.04.22.
//
import Foundation



class ForecastCellVM: ForecastCellVMProtocol{
    
    private var weatherData: MainModel
   
    
    var time: String{
        return timeFormater(time: weatherData.date)
    }
    
    var date: String{
        return dateFormatter(date: weatherData.date)
    }
    
    var temp: Double{
        //guard let temper = weatherData.temp else {return 0}
        return weatherData.temp
    }
    
    var condition: String{
        return weatherData.condition
    }
    
    var imageNum: Int{
        return weatherData.imageNum
    }
    
    init(weatherData: MainModel) {
        self.weatherData = weatherData
    }
    
    
    
    
}



extension ForecastCellVM{
    
        func timeFormater (time: String) -> String {
    
            let date: String = time
            let start = date.index(date.startIndex, offsetBy: 11)
            let end = date.index(date.startIndex, offsetBy: 16)
            let range = start..<end
                return String(date[range])
    
        }
    
        func dateFormatter(date: String) -> String {
    
            let date: String = date
            let start = date.index(date.startIndex, offsetBy: 0)
            let end = date.index(date.endIndex, offsetBy: -9)
            let range = start..<end
            return String(date[range])
    
    }
    
}
