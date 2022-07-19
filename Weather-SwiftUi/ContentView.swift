//
//  ContentView.swift
//  Weather-SwiftUi
//
//  Created by Eder  Padilla on 18/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue,
                                                       Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Toluca, MX")
                    .font(.system(size: 32,
                                  weight: .medium,
                                  design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                        .clipped()
                    
                    Text("76°C")
                        .font(.system(size: 70,
                                      weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfTheWeeek: "Mon",
                                   imageName: "cloud.sun.bolt.fill",
                                   temperature: 36)
                    WeatherDayView(dayOfTheWeeek: "Tue",
                                   imageName: "sunrise.fill",
                                   temperature: 36)
                    WeatherDayView(dayOfTheWeeek: "Wen",
                                   imageName: "sun.haze.fill",
                                   temperature: 36)
                    WeatherDayView(dayOfTheWeeek: "Thu",
                                   imageName: "cloud.bolt.rain.fill",
                                   temperature: 36)
                    WeatherDayView(dayOfTheWeeek: "Fri",
                                   imageName: "thermometer.sun.fill",
                                   temperature: 36)
                }
                Spacer()
                
                Button {
                    print("🚀🚀🚀🚀 Hello World 🚀🚀🚀🚀")
                } label: {
                    Text("Change Time 🌪")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold))
                        .cornerRadius(8.0)
                }
                
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

struct WeatherDayView: View {
    var dayOfTheWeeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfTheWeeek)
                .font(.system(size: 16,
                              weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .clipped()
            
            Text("\(temperature)°")
                .font(.system(size: 28,
                              weight: .medium))
                .foregroundColor(.white)
        }
    }
}
