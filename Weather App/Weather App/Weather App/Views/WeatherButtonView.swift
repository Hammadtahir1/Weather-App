//
//  WeatherButtonView.swift
//  Weather App
//
//  Created by Hamza on 22/01/2024.
//

import Foundation
import SwiftUI

struct WeatherButton :View {
    var title:String
    var textColor: Color
    var backgroundColor: Color
    
    var body : some View {
        Text(title)
            .bold()
            .foregroundColor(.blue)
            .padding(13)
            .padding(.horizontal ,30)
            .background(.white)
        
    }
    
}
