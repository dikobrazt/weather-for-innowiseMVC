//
//  ForecastCellViewModelProtocol.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 26.04.22.
//
import Foundation



protocol ForecastCellVMProtocol: class{
    var time: String { get }
    var date: String { get }
    var temp: Double { get }
    var condition: String { get }
    var imageNum: Int { get }
    
}
