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
    
    @objc func goToForecastView(){
        let forecastView = ForecastView()
        if let forecastCardView = forecastView.sheetPresentationController{
            forecastCardView.detents = [.large()]
            forecastCardView.prefersGrabberVisible = true
            forecastCardView.preferredCornerRadius = 25
            //разобраться со всем свойствами
        }
        present(forecastView, animated: true, completion: nil)
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
        conditionIW.tintColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
    }
    
    func setUpInfoBtn(){
        infoBtn.setTitle("More info", for: .normal)
        infoBtn.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
        infoBtn.layer.cornerRadius = 25
        infoBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        infoBtn.setTitleColor(.black, for: .normal)
    }
    
    @objc func goToInfoView(){
        let infoView = InfoView()
        
        if let infoCardView = infoView.sheetPresentationController{
            infoCardView.detents = [.medium()]
            infoCardView.prefersGrabberVisible = true
            infoCardView.preferredCornerRadius = 25
            }
        self.present(infoView, animated: true, completion: nil)
    }
    
    func setUpCityLabel(){
        cityLabel.text = "--city--"
        cityLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        cityLabel.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        cityLabel.textAlignment = .center
    }
    
    func setUpTempLabel(){
        tempLabel.text = "--temp--"
        tempLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        tempLabel.font = UIFont.systemFont(ofSize: 40, weight: .regular)
        tempLabel.textAlignment = .center
    }
    
    func setUpConditionLabel(){
        conditionLabel.text = "--conditon--"
        conditionLabel.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        conditionLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        conditionLabel.textAlignment = .center
    }
}
