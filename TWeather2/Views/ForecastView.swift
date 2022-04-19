//
//  ForecastView.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 18.04.22.
//

import UIKit

class ForecastView: UIViewController {
    
    let cellID: String = "cellID"
    let forecastLabel = UILabel()
   // let forecastTableView = UITableView(frame: CGRect.zero, style: .insetGrouped)
    let forecastTableView = UITableView()
    var safeArea: UILayoutGuide!
    var forecastVM = ForecastVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(forecastLabel)
        view.addSubview(forecastTableView)
        forecastTableView.register(UINib(nibName: "ForecastCell", bundle: nil), forCellReuseIdentifier: cellID)
        forecastTableView.dataSource = self
        forecastTableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        funcs
        setUpForecastLabel()
       
        
//        frames
        forecastLabel.frame = .init(x: 20, y: 35, width: 300, height: 50)
        
        forecastTableView.translatesAutoresizingMaskIntoConstraints = false
        self.forecastTableView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        forecastTableView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        self.forecastTableView.heightAnchor.constraint(equalToConstant: 600).isActive = true
        self.forecastTableView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
}
}
