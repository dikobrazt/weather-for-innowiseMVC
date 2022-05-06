//
//  ForecastCell.swift
//  TWeather2
//
//   Created by Vladislav Tuleiko on 19.04.22.


import UIKit



class ForecastCell: UITableViewCell{
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var conditionIW: UIImageView!
    
    weak var forecastViewModel: ForecastCellVMProtocol?{
        willSet(forecastViewModel){
            timeLabel.text = forecastViewModel?.time
            dateLabel.text = forecastViewModel?.date
            tempLabel.text = String(describing: forecastViewModel?.temp)
            conditionLabel.text = forecastViewModel?.condition
            switch forecastViewModel!.imageNum {
                   case 200...232:
                       conditionIW.image = UIImage(systemName: "tropicalstorm")
                   case 300...321:
                      conditionIW.image = UIImage(systemName: "cloud.drizzle")
                   case 500...531:
                       conditionIW.image = UIImage(systemName: "cloud.rain")
                   case 600...622:
                       conditionIW.image = UIImage(systemName: "snow")
                   case 701...781:
                       conditionIW.image = UIImage(systemName: "cloud.fog")
                   case 800:
                       conditionIW.image = UIImage(systemName: "sun.min")
                   case 801...804:
                       conditionIW.image = UIImage(systemName: "cloud")
                   default:
                       conditionIW.image = UIImage(systemName: "questionmark")
                   }
        }
    }
}
