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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
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
                
                HStack {
                    WeatherDayView(dayOfTheWeeek: "Mon",
                                   imageName: "cloud.sun.bolt.fill",
                                   temperature: 36)
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
