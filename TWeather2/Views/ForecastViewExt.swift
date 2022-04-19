//
//  ForecastViewExt.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 18.04.22.
//

import UIKit

extension ForecastView{
    
    func setUpForecastLabel(){
        forecastLabel.text = "Forecast"
        forecastLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        forecastLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
    }
}
