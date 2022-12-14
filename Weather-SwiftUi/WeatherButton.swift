//
//  WeatherButton.swift
//  Weather-SwiftUi
//
//  Created by Eder  Padilla on 18/07/22.
//
import SwiftUI

struct WeatherButton: View {
    @Binding var isNight: Bool
    var cornerRadius: CGFloat
    var text: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        Button {
            isNight.toggle()
            print("🚀🚀🚀🚀 Hello World 🚀🚀🚀🚀")
        } label: {
            Text(text)
                .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.bodyBold(with: 40))
                .cornerRadius(cornerRadius)
                .padding(.leading, 16)
                .padding(.trailing, 16)
        }
    }
}

#if DEBUG
struct WeatherButton_Previews : PreviewProvider {
    
    @State static var isNight = false
    
    static var previews: some View {
        WeatherButton(isNight: $isNight,
                      cornerRadius: 10,
                      text: "Hello Motherf*cker",
                      backgroundColor: .blue,
                      textColor: .white)
        
    }
}
#endif
