//
//  WeatherDayView.swift
//  Weather App
//
//  Created by Hamza on 22/01/2024.
//

import SwiftUI

struct WeatherDayView: View {
    
    var weather: Weather
    var isNight: Bool
    
    var body: some View {
        VStack(spacing: 10) {
            
            Text(weather.day)
                .foregroundColor(.white)
            
            Text(isNight ? weather.nightemoji : weather.dayemoji)
                .font(.system(size: 40, weight: .bold))
            
            Text(isNight ? weather.nighttemprature : weather.daytemprature)
                .foregroundColor(.white)
                .font(.system(size: 22, weight: .bold))
        }
    }
}

//struct WeatherDayView_Previews: PreviewProvider {
//    static var previews: some View {
//        WeatherDayView()
//    }
//}
