//
//  ForecastVMProtocol.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 25.04.22.
//
import Foundation



protocol ForecastVMProtocol{
    func numberOfRows() -> Int
    func forecastCellViewModel(forIndexPath indexPath: IndexPath) -> ForecastCellVMProtocol?
}
