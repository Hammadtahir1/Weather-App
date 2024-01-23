//
//  WeatherDay.swift
//  Weather App
//
//  Created by Hamza on 22/01/2024.
//

import Foundation

struct Weather: Identifiable {
    var id: UUID = .init()
    var day: String
    var dayemoji: String
    var nightemoji:String
    var daytemprature: String
    var nighttemprature: String
    
}
