//
//  ForecastCell.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 19.04.22.


import UIKit



class ForecastCell: UITableViewCell{
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var conditionIW: UIImageView!
    
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: true)
    }
    
}
