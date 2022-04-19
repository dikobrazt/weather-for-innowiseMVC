//
//  ViewController.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 18.04.22.
//

import UIKit

class MainView: UIViewController {
    
    let forecastBtn = UIButton()
    let infoBtn = UIButton()
    let mainLabel = UILabel()
    let countryLabel = UILabel()
    let conditionIW = UIImageView()
    let tempLabel = UILabel()
    let cityLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.addSubview(forecastBtn)
        view.addSubview(infoBtn)
        view.addSubview(mainLabel)
        view.addSubview(countryLabel)
        view.addSubview(conditionIW)
        view.addSubview(tempLabel)
        view.addSubview(cityLabel)
    }
    
    override func viewWillAppear(_ animated: Bool) {

//        set up funcs
        setUpForecastBtn()
        setUpMainLabel()
        setUpCountryLabel()
        setUpConditionIW()
        setUpInfoBtn()
        setUpCityLabel()
        setUpTempLabel()
        
//        frames
        mainLabel.frame = .init(x: 0, y: 50, width: 200, height: 50)
        mainLabel.center.x = view.center.x
        forecastBtn.frame = .init(x: 0, y: 680, width: 200, height: 70)
        forecastBtn.center.x = view.center.x
        countryLabel.frame = .init(x: 0, y: 50, width: 50, height: 50)
        conditionIW.frame = .init(x: 0, y: 0, width: 200, height: 200)
        conditionIW.center.x = view.center.x
        conditionIW.center.y = view.center.y - 50
        infoBtn.frame = .init(x: 0, y: 620, width: 150, height: 50)
        infoBtn.center.x = view.center.x
        cityLabel.frame = .init(x: 0, y: 180, width: 300, height: 50)
        cityLabel.center.x = view.center.x
        tempLabel.frame = .init(x: 0, y: 500, width: 300, height: 50)
        tempLabel.center.x = view.center.x
    }
    

}

