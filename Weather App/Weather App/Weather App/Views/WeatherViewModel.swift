//
//  WeatherViewModel.swift
//  Weather App
//
//  Created by Hamza on 24/01/2024.
//

import SwiftUI

class WeatherViewModel : ObservableObject {
    
    @Published var isNight = false
    
    @Published var showTemperatureInCelsius = false
    
    @Published var weatherList: [Weather] = [
        .init(day: "TUE", dayemoji: "🌥", nightemoji: "⛈" , daytemprature: "33°" ,nighttemprature: "27°"),
        .init(day: "WED", dayemoji: "⛈", nightemoji: "❄️" , daytemprature: "26°" ,nighttemprature: "21°"),
        .init(day: "THU", dayemoji: "❄️", nightemoji: "💨" , daytemprature: "29°" ,nighttemprature: "22°"),
        .init(day: "FRI", dayemoji: "🌩", nightemoji: "🌩" , daytemprature: "28°", nighttemprature: "23°"),
        .init(day: "SAT", dayemoji: "💨", nightemoji: "🌥" , daytemprature: "29°", nighttemprature: "20°"),
    ]
    
    func toggleDisplay() {
        withAnimation(.spring()) {
            self.isNight.toggle()
        }
    }
}
