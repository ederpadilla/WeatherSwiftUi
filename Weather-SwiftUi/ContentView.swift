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
            BackgroundView(topColor: .blue,
                           bottomColor: Color("lightBlue"))
            VStack {
                CityNameTextView(name: "Toluca, MX")
                
                WeatherImage(spacing: 10,
                             image: "cloud.sun.fill",
                             text: "76°C")
                
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
                
                WeatherButton(cornerRadius: 10,
                              text: "Change 🌪",
                              backgroundColor: .white,
                              textColor: .green)
                
                Spacer()
            }
        }
    }
}

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
#if DEBUG
    @objc class func injected() {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        windowScene?.windows.first?.rootViewController =
        UIHostingController(rootView: ContentView())
    }
#endif
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,
                                                   bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
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
