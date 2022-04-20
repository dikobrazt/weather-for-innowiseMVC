//
//  MainViewExt.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 18.04.22.


import UIKit



extension MainView{
    
    func setUpForecastBtn(){
        forecastBtn.setTitle("Forecast", for: .normal)
        forecastBtn.setTitle("Try later...", for: .disabled)
        forecastBtn.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
        forecastBtn.layer.cornerRadius = 15
        forecastBtn.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        forecastBtn.setTitleColor(.white, for: .normal)
        
        forecastBtn.isEnabled = false
    }
    
    @objc func goToForecastView(){
        let forecastView = ForecastView()
        if let forecastCardView = forecastView.sheetPresentationController{
            forecastCardView.detents = [.large()]
            forecastCardView.prefersGrabberVisible = true
            forecastCardView.preferredCornerRadius = 25
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
        conditionIW.image = UIImage(systemName: "questionmark.circle")
        conditionIW.tintColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
    }
    
    func setUpInfoBtn(){
        infoBtn.setTitle("More info", for: .normal)
        infoBtn.setTitle("Try later...", for: .disabled)
        infoBtn.backgroundColor = #colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1)
        infoBtn.layer.cornerRadius = 25
        infoBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        infoBtn.setTitleColor(.white, for: .normal)
        infoBtn.isEnabled = false
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


//MARK: - Networking delegate
extension MainView: NetworkingDelegate{
    func updateInterface(_: Networking, with weatherData: WeatherData) {
        DispatchQueue.main.async {
             self.countryLabel.text = weatherData.city.country
             self.cityLabel.text = weatherData.city.name
             self.conditionLabel.text = weatherData.list.first!.weather.last?.description
             self.tempLabel.text = Int(round(weatherData.list.first!.main.temp - 273)).description + "°C"
             if var imageNum = weatherData.list.first!.weather.last!.id {
             switch imageNum {
             case 200...232:
                 self.conditionIW.image = UIImage(systemName: "tropicalstorm")
             case 300...321:
                 self.conditionIW.image = UIImage(systemName: "cloud.drizzle")
             case 500...531:
                 self.conditionIW.image = UIImage(systemName: "cloud.rain")
             case 600...622:
                 self.conditionIW.image = UIImage(systemName: "snow")
             case 701...781:
                 self.conditionIW.image = UIImage(systemName: "cloud.fog")
             case 800:
                 self.conditionIW.image = UIImage(systemName: "sun.min")
             case 801...804:
                 self.conditionIW.image = UIImage(systemName: "cloud")
             default:
                 self.conditionIW.image = UIImage(systemName: "questionmark")
             }
             }else{
                 print("FF")
             }
         }
    }
    
    
    
//MARK: - Set Up Alert
    func setUpAlert(errorDescription: String) {
        DispatchQueue.main.async {
            let alertVC = UIAlertController(title: "Problems again(", message: errorDescription, preferredStyle: .actionSheet)
            alertVC.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.destructive, handler: nil))
            alertVC.addAction(UIAlertAction(title: "Settings", style:
            UIAlertAction.Style.cancel, handler: { action in
                
            UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!, options: [:], completionHandler: nil)
            }))
            
            self.present(alertVC, animated: true, completion: nil)
        }
    }
}






