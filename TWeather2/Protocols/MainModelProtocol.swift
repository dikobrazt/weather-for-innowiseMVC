//
//  MainModelProtocol.swift
//  TWeather2
//
//  Created by Vladislav Tuleiko on 29.04.22.
//

import Foundation



protocol MainModelProtocol: class{
    var country: String { get }
    var city: String { get }
    var temp: Double { get }
    var condition: String { get }
    var imageNum: Int { get }
    var wind: Double { get }
    var humidity: Int { get }
    var tempMax: Double { get }
    var pressure: Int { get }
    var date: String { get }
}
