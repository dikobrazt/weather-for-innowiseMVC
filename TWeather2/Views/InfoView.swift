//
//  InfoView.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 18.04.22.
//

import UIKit

class InfoView: UIViewController{
    
    let infoLabel = UILabel()
    let windIW = UIImageView()
    let windLabel = UILabel()
    let humidityIW = UIImageView()
    let humidityLabel = UILabel()
    let pressureIW = UIImageView()
    let pressureLabel = UILabel()
    let tempMaxIW = UIImageView()
    let tempMaxLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(infoLabel)
        view.addSubview(windIW)
        view.addSubview(windLabel)
        view.addSubview(humidityIW)
        view.addSubview(humidityLabel)
        view.addSubview(pressureIW)
        view.addSubview(pressureLabel)
        view.addSubview(tempMaxIW)
        view.addSubview(tempMaxLabel)

    }
    
    override func viewWillAppear(_ animated: Bool) {
//        funcs
        setUpInfoLabel()
        setUpWindIW()
        setUpWindLabel()
        setUpHumidityIW()
        setUpHumidityLabel()
        setUpPressureIW()
        setUpPressureLabel()
        setUpTempMaxIW()
        setUpTempMaxLabel()
        
//        frames
        
        infoLabel.frame = .init(x: 20, y: 35, width: 300, height: 50)
        
        windIW.frame = .init(x: 0, y: 120, width: 40, height: 40)
        windIW.center.x = view.center.x - 120
        windLabel.frame = .init(x: 0, y: 165, width: 130, height: 30)
        windLabel.center.x = view.center.x - 120
        
        humidityIW.frame = .init(x: 0, y: 120, width: 40, height: 40)
        humidityIW.center.x = view.center.x + 120
        humidityLabel.frame = .init(x: 0, y: 165, width: 130, height: 30)
        humidityLabel.center.x = view.center.x + 120
        
        pressureIW.frame = .init(x: 0, y: 300, width: 40, height: 40)
        pressureIW.center.x = view.center.x + 120
        pressureLabel.frame = .init(x: 0, y: 345, width: 130, height: 30)
        pressureLabel.center.x = view.center.x + 120
        
        tempMaxIW.frame = .init(x: 0, y: 300, width: 40, height: 40)
        tempMaxIW.center.x = view.center.x - 120
        tempMaxLabel.frame = .init(x: 0, y: 345, width: 130, height: 30)
        tempMaxLabel.center.x = view.center.x - 120
    }
}
