//
//  ContentView.swift
//  Weather-SwiftUi
//
//  Created by Eder  Padilla on 18/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var weatherUi = WeatherUi()
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: weatherUi.isNight)
            VStack {
                CityNameTextView(name: "Toluca, MX")
                
                WeatherImage(spacing: 10,
                             image: weatherUi.isNight ? "moon.circle.fill" : "cloud.sun.fill",
                             text: "76°C")
                
                HStack(spacing: 20) {
                    ForEach(weatherUi.isNight ? weatherUi.nightDays : weatherUi.sunnyDays) { day in
                        WeatherDayView(weatherDayUi: day)
                    }
                }
                
                Spacer()
                
                WeatherButton(isNight: $weatherUi.isNight,
                              cornerRadius: 10,
                              text: "Change 🌪",
                              backgroundColor: .white,
                              textColor: .gray)
                
                Spacer()
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
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                                   isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct CityNameTextView: View {
    var name: String
    var body: some View {
        Text(name)
            .font(.system(size: 32,
                          weight: .medium,
                          design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct WeatherImage: View {
    var spacing: CGFloat
    var image: String
    var text: String
    
    
    var body: some View {
        VStack(spacing: spacing) {
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
                .clipped()
            
            Text(text)
                .font(.system(size: 70,
                              weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

struct WeatherDayView: View {
    var weatherDayUi: WeatherDayUi
    
    var body: some View {
        VStack {
            Text(weatherDayUi.dayOfWeek)
                .font(.system(size: 16,
                              weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: weatherDayUi.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .clipped()
            
            Text("\(weatherDayUi.temperature)°")
                .font(.system(size: 28,
                              weight: .medium))
                .foregroundColor(.white)
        }
    }
}
