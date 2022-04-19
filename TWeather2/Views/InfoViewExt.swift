//
//  InfoViewExt.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 18.04.22.
//

import UIKit



extension InfoView{
    
    func setUpInfoLabel(){
        infoLabel.text = "Info"
        infoLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        infoLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)

    }
    
    func setUpWindIW(){
        windIW.image = UIImage(systemName: "wind")
        windIW.tintColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
    }
    
    func setUpWindLabel(){
        windLabel.text = "--wind--"
        windLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        windLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        windLabel.textAlignment = .center
    }
    
    func setUpHumidityIW(){
        humidityIW.image = UIImage(systemName: "humidity")
        humidityIW.tintColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
    }
    
    func setUpHumidityLabel(){
        humidityLabel.text = "--humidity--"
        humidityLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        humidityLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        humidityLabel.textAlignment = .center
    }
    
    func setUpPressureIW(){
        pressureIW.image = UIImage(systemName: "rectangle.compress.vertical")
        pressureIW.tintColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
    }
    
    func setUpPressureLabel(){
        pressureLabel.text = "--pressure--"
        pressureLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        pressureLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        pressureLabel.textAlignment = .center
    }
    
    func setUpTempMaxIW(){
        tempMaxIW.image = UIImage(systemName: "sun.max")
        tempMaxIW.tintColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
    }
    
    func setUpTempMaxLabel(){
        tempMaxLabel.text = "--maxTemp--"
        tempMaxLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        tempMaxLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        tempMaxLabel.textAlignment = .center
    }
}
