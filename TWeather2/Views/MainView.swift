//
//  ViewController.swift
//  TWeather2

//  Created by Vladislav Tuleiko on 18.04.22.
//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 token githuubb

import UIKit



class MainView: UIViewController {
    
//MARK: - Declaration
    var net = Networking()
    let forecastBtn = UIButton()
    let infoBtn = UIButton()
    let mainLabel = UILabel()
    let countryLabel = UILabel()
    let conditionIW = UIImageView()
    let tempLabel = UILabel()
    let cityLabel = UILabel()
    let conditionLabel = UILabel()

    
    
//MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.addSubview(forecastBtn)
        forecastBtn.addTarget(self, action: #selector(goToForecastView), for: .touchUpInside)
        
        view.addSubview(infoBtn)
        infoBtn.addTarget(self, action: #selector(goToInfoView), for: .touchUpInside)
        
        view.addSubview(mainLabel)
        view.addSubview(countryLabel)
        view.addSubview(conditionIW)
        view.addSubview(tempLabel)
        view.addSubview(cityLabel)
        view.addSubview(conditionLabel)
       
        net.startLM()
        net.delegate = self
      
    }
    
    
    
//MARK: - viewWillAppear
    override func viewWillAppear(_ animated: Bool) {

//        set up funcs
        setUpForecastBtn()
        setUpMainLabel()
        setUpCountryLabel()
        setUpConditionIW()
        setUpInfoBtn()
        setUpCityLabel()
        setUpTempLabel()
        setUpConditionLabel()
        
//        frames
        mainLabel.frame = .init(x: 0, y: 50, width: 200, height: 50)
        mainLabel.center.x = view.center.x
        
        forecastBtn.frame = .init(x: 0, y: 680, width: 200, height: 70)
        forecastBtn.center.x = view.center.x
        
        countryLabel.frame = .init(x: 0, y: 50, width: 50, height: 50)
        
        conditionIW.frame = .init(x: 0, y: 0, width: 150, height: 150)
        conditionIW.center.x = view.center.x
        conditionIW.center.y = view.center.y - 30
        
        infoBtn.frame = .init(x: 0, y: 620, width: 150, height: 50)
        infoBtn.center.x = view.center.x
        
        cityLabel.frame = .init(x: 0, y: 180, width: 300, height: 50)
        cityLabel.center.x = view.center.x
        
        tempLabel.frame = .init(x: 0, y: 500, width: 300, height: 50)
        tempLabel.center.x = view.center.x
        
        conditionLabel.frame = .init(x: 0, y: 220, width: 300, height: 50)
        conditionLabel.center.x = view.center.x
    }
    

}




