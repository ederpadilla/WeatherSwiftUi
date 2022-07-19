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
                    WeatherDayView()
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
    var body: some View {
        VStack {
            Text("Tue")
                .font(.system(size: 16,
                              weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .clipped()
            
            Text("76°")
                .font(.system(size: 28,
                              weight: .medium))
                .foregroundColor(.white)
        }
    }
}
