//
//  WeatherMainStatusView.swift
//  Weather App
//
//  Created by Hamza on 22/01/2024.
//

import SwiftUI

struct WeatherMainStatusView: View {
    
    var city: String
    var icon: String
    var temprature: String
    
    var body: some View {
        VStack {
            
            Text(city)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            
            ZStack {
                Image(systemName: icon)
                    .renderingMode(.original)
                    .resizable()
                    .foregroundColor(.yellow)
                    .aspectRatio(contentMode: .fit)
            }
            .frame(width: 70, height: 70)
            
            Text(temprature)
                .font(.system(size: 60, weight: .bold))
                .foregroundColor(.white)
        }
        
    }
}

struct WeatherMainStatusView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        WeatherMainStatusView(city: "Karachi", icon:"cloud.sun.fill", temprature: "36°")
//            .background(.blue)
//        WeatherDayView()
        
    }
}

















//@State var weathers: [Weather] = [
//    .init(day: "TUE", emoji: "🌥", temprature: "33°"),
//    .init(day: "WED", emoji: "⛈", temprature: "26°"),
//    .init(day: "THU", emoji: "❄️", temprature: "29°"),
//    .init(day: "FRI", emoji: "🌩", temprature: "12°"),
//    .init(day: "SAT", emoji: "💨", temprature: "29°")
 
//]
