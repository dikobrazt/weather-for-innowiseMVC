//
//  MainViewExt.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 18.04.22.
//

import UIKit

extension MainView{
    
    func setUpForecastBtn(){
        forecastBtn.setTitle("Forecast", for: .normal)
        forecastBtn.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
        forecastBtn.layer.cornerRadius = 15
        forecastBtn.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        forecastBtn.setTitleColor(.white, for: .normal)
    }
    
    func setUpMainLabel(){
        mainLabel.text = "TWeather"
        mainLabel.textColor = .black
        mainLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        mainLabel.textAlignment = .center
    }
    
    func setUpCountryLabel(){
        countryLabel.text = "--"
        countryLabel.textColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
        countryLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        countryLabel.textAlignment = .center
    }
    
    func setUpConditionIW(){
        conditionIW.image = UIImage(systemName: "questionmark")
        conditionIW.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    func setUpInfoBtn(){
        infoBtn.setTitle("More info", for: .normal)
        infoBtn.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
        infoBtn.layer.cornerRadius = 25
        infoBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        infoBtn.setTitleColor(.black, for: .normal)
    }
    
    func setUpCityLabel(){
        cityLabel.text = "City ffffffffff"
        cityLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        cityLabel.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        cityLabel.textAlignment = .center
    }
    
    func setUpTempLabel(){
        tempLabel.text = "40uu"
        tempLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        tempLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        tempLabel.textAlignment = .center
    }
}
