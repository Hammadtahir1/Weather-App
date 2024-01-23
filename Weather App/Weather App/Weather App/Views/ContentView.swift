//
//  ContentView.swift
//  Weather App
//
//  Created by Hamza on 19/01/2024.
//

import SwiftUI



struct ContentView: View {
    @State private var isNight = false
    
    @State var weatherList: [Weather] = [
        .init(day: "TUE", dayemoji: "🌥", nightemoji: "⛈" , daytemprature: "33°" ,nighttemprature: "27°"),
        .init(day: "WED", dayemoji: "⛈", nightemoji: "❄️" , daytemprature: "26°" ,nighttemprature: "21°"),
        .init(day: "THU", dayemoji: "❄️", nightemoji: "💨" , daytemprature: "29°" ,nighttemprature: "22°"),
        .init(day: "FRI", dayemoji: "🌩", nightemoji: "🌩" , daytemprature: "28°", nighttemprature: "23°"),
        .init(day: "SAT", dayemoji: "💨", nightemoji: "🌥" , daytemprature: "29°", nighttemprature: "20°"),
    ]
    
    var body: some View {
        ZStack() {
            // BACKGROUND
            BackgroundView(isNight: $isNight)
            
            
            VStack(spacing: 45) {
                
                // 2. Current Status View
                WeatherMainStatusView(city: isNight ? "Chicago" : "Karachi",
                                      icon: isNight ? "moon.stars.fill" : "cloud.sun.fill" ,
                                      temprature:isNight ? "25°" : "36°" )
                
                // 3. Week Days
                HStack(spacing: 22) {
                    ForEach(weatherList) { weather in
                        WeatherDayView(weather: weather, isNight : isNight)
                    }
                }

                VStack{
                    //BUTTON
                    Button {
                        withAnimation(.spring()) {
                            isNight.toggle()
                        }
                        
                    } label: {
                        WeatherButton(title: "Change City", textColor: .blue, backgroundColor: .white)
                        
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct BackgroundView: View {
   @Binding var isNight : Bool
   
    var body: some View {
        
        let colors: [Color] = isNight ? [.black, .gray] : [.blue, .mint]
        
        LinearGradient(colors: colors, startPoint: UnitPoint.top,
            endPoint: .bottom)
        .ignoresSafeArea()
    }
    
}



