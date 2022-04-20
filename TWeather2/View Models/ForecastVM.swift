//
//  ForecastVM.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 18.04.22.


import Foundation



class ForecastVM{
    
    func timeFormater (indexPath: IndexPath, dataGlobal: WeatherData) -> String {
      
        let date: String = dataGlobal.list[indexPath.row].dt_txt
        let start = date.index(date.startIndex, offsetBy: 11)
        let end = date.index(date.startIndex, offsetBy: 16)
        let range = start..<end
            return String(date[range])
     
    }
    
    func dateFormatter(indexPath: IndexPath, globalData: WeatherData) -> String {
 
        let date: String = dataGlobal.list[indexPath.row].dt_txt
        let start = date.index(date.startIndex, offsetBy: 0)
        let end = date.index(date.endIndex, offsetBy: -9)
        let range = start..<end
        return String(date[range])
      
}
}
