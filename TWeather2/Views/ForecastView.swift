//
//  ForecastView.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 18.04.22.
//

import UIKit

class ForecastView: UIViewController{
    
    let forecastLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(forecastLabel)
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        funcs
        setUpForecastLabel()
        
//        frames
        forecastLabel.frame = .init(x: 20, y: 35, width: 300, height: 50)
    }
}
