//
//  ForecastViewExt.swift
//  TWeather2

//  Created by Vladislav Tuleiko on 18.04.22.
// 

import UIKit



extension ForecastView{
    
    func setUpForecastLabel(){
        forecastLabel.text = "Forecast"
        forecastLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        forecastLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
    }
}



//MARK: - Table view protocols
extension ForecastView: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecastVM?.numberOfRows() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? ForecastCell
            // as? + guard let
        guard let tableViewCell = cell, let forecastVM = forecastVM else {return UITableViewCell() }
        let forecastCellVM = forecastVM.forecastCellViewModel(forIndexPath: indexPath)
        
        cell?.forecastViewModel = forecastCellVM

        return cell!
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "5 days"
    }
    
}




//let forecastCellVM = forecastVM?.forecastCellViewModel(forIndexPath: indexPath.row)

//cell.forecastViewModel = forecastCellVM
//        let timeTrue = forecastVM.timeFormater(indexPath: indexPath, dataGlobal: dataGlobal)
//        let dateTrue = forecastVM.dateFormatter(indexPath: indexPath, globalData: dataGlobal)
//        cell.dateLabel.text = dateTrue
//        cell.timeLabel.text = timeTrue
//        cell.tempLabel.text = Int(round(dataGlobal.list[indexPath.row].main.temp - 273)).description + "°C"
//        cell.conditionLabel.text = dataGlobal.list[indexPath.row].weather.first?.description
//
//        if var imageNum = dataGlobal.list[indexPath.row].weather.last!.id{
//        switch imageNum {
//        case 200...232:
//            cell.conditionIW.image = UIImage(systemName: "tropicalstorm")
//        case 300...321:
//           cell.conditionIW.image = UIImage(systemName: "cloud.drizzle")
//        case 500...531:
//            cell.conditionIW.image = UIImage(systemName: "cloud.rain")
//        case 600...622:
//            cell.conditionIW.image = UIImage(systemName: "snow")
//        case 701...781:
//            cell.conditionIW.image = UIImage(systemName: "cloud.fog")
//        case 800:
//            cell.conditionIW.image = UIImage(systemName: "sun.min")
//        case 801...804:
//            cell.conditionIW.image = UIImage(systemName: "cloud")
//        default:
//            cell.conditionIW.image = UIImage(systemName: "questionmark")
//        }
//        }else{
//            print("FF")
//        }
