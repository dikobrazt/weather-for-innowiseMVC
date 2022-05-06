//
//  ViewController.swift
//  TWeather2

//   Created by Vladislav Tuleiko on 18.04.22.


import UIKit
//import SnapKit



class MainView: UIViewController {
    
//MARK: - Declaration
    //weak var delegate: MainViewDelegate?
    let forecastBtn = UIButton()
    let infoBtn = UIButton()
    let mainLabel = UILabel()
    let countryLabel = UILabel()
    let conditionIW = UIImageView()
    let tempLabel = UILabel()
    let cityLabel = UILabel()
    let conditionLabel = UILabel()
    var mainVM: MainVM? = MainVM()
    
    var completionHandler: ((String) -> Void)?
    
    
   
    

    
//MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
       //addSubview
        view.backgroundColor = .white
        view.addSubview(mainLabel)
        view.addSubview(countryLabel)
        view.addSubview(conditionIW)
        view.addSubview(tempLabel)
        view.addSubview(cityLabel)
        view.addSubview(conditionLabel)
        view.addSubview(forecastBtn)
        //addTarget
        forecastBtn.addTarget(self, action: #selector(goToForecastView), for: .touchUpInside)
        view.addSubview(infoBtn)
        infoBtn.addTarget(self, action: #selector(goToInfoView), for: .touchUpInside)
        //print(mainVM?.weather1)
    }
    
    
    
//MARK: - viewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        mainVM?.getWeather()
        mainVM?.weather.bind{ [unowned self] in
            guard $0 != nil else {return}
            //здесь обновление интерыейса епта
            guard mainVM != nil else {return}
            updateInterface(with: mainVM!)
        }
//        set up funcs
        setUpForecastBtn()
        setUpMainLabel()
        setUpCountryLabel()
        setUpConditionIW()
        setUpInfoBtn()
        setUpCityLabel()
        setUpTempLabel()
        setUpConditionLabel()
        
//       setUpUIElements
//        mainLabel.snp.makeConstraints { maker in
//            maker.centerX.equalToSuperview()
//            maker.top.equalToSuperview().inset(50)
//        }
        
        forecastBtn.frame = .init(x: 0, y: 680, width: 200, height: 70)
        forecastBtn.center.x = view.center.x
//        forecastBtn.snp.makeConstraints { make in
//            make.centerX.equalToSuperview()
//            make.top.equalToSuperview().inset(680)
//        }
        
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




