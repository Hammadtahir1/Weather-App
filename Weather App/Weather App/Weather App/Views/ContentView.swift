//
//  ContentView.swift
//  Weather App
//
//  Created by Hamza on 19/01/2024.
//

import SwiftUI



struct ContentView: View {
    
    @StateObject var viewModel = WeatherViewModel()
    
    var body: some View {
        ZStack() {
            // BACKGROUND
            BackgroundView(viewModel: viewModel)
            
            
            VStack(spacing: 45) {
                
                // 2. Current Status View
                WeatherMainStatusView(viewModel: viewModel)
                
                // 3. Week Days
                HStack(spacing: 22) {
                    ForEach(viewModel.weatherList) { weather in
                        WeatherDayView(viewModel: viewModel, weather: weather)
                    }
                }
                
                VStack{
                    //BUTTON
                    Button {
                        viewModel.toggleDisplay()                        
                    } label: {
                        WeatherButton(title: "Change City", textColor: .blue, backgroundColor: .white)                        
                    }
                    
                    Toggle("Change Degree", isOn: $viewModel.showTemperatureInCelsius)
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
    
    @ObservedObject var viewModel: WeatherViewModel
    
    var body: some View {
        
        let colors: [Color] = viewModel.isNight ? [.black, .gray] : [.blue, .mint]
        
        LinearGradient(colors: colors, startPoint: UnitPoint.top,
                       endPoint: .bottom)
        .ignoresSafeArea()
    }
}
