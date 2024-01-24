//
//  WeatherDayView.swift
//  Weather App
//
//  Created by Hamza on 22/01/2024.
//

import SwiftUI

struct WeatherDayView: View {
    
    @ObservedObject var viewModel: WeatherViewModel
    var weather: Weather
    
    var body: some View {
        VStack(spacing: 10) {
            
            Text(weather.day)
                .foregroundColor(.white)
            
            Text(viewModel.isNight ? weather.nightemoji : weather.dayemoji)
                .font(.system(size: 40, weight: .bold))
            
            if viewModel.showTemperatureInCelsius {
                Text("\(viewModel.isNight ? weather.nighttemprature : weather.daytemprature) C")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .bold))
            }
            else {
                Text("\(viewModel.isNight ? weather.nighttemprature : weather.daytemprature) F")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .bold))
            }
        }
    }
}

//struct WeatherDayView_Previews: PreviewProvider {
//    static var previews: some View {
//        WeatherDayView()
//    }
//}
