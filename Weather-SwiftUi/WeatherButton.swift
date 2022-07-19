//
//  WeatherButton.swift
//  Weather-SwiftUi
//
//  Created by Eder  Padilla on 18/07/22.
//
import SwiftUI

struct WeatherButton: View {
    var cornerRadius: CGFloat
    var text: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        Button {
            print("🚀🚀🚀🚀 Hello World 🚀🚀🚀🚀")
        } label: {
            Text(text)
                .frame(width: 280, height: 50)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.system(size: 20, weight: .bold))
                .cornerRadius(cornerRadius)
        }
    }
}
