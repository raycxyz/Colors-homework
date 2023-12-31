//
//  ButtonView.swift
//  Colors
//
//  Created by Raymond Ho on 2023-12-30.
//

import SwiftUI

struct ButtonView: View {
    @Binding var redSlider: Double
    @Binding var greenSlider: Double
    @Binding var blueSlider: Double
    @Binding var foregroundColor: Color
    @Binding var text: String
    
    var body: some View {
        Button(text) {
            withAnimation {
                foregroundColor = Color(red: redSlider / Constants.colorRange, green: greenSlider / Constants.colorRange, blue: blueSlider / Constants.colorRange)
            }
        }
        .padding(20)
        .foregroundStyle(.white)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.red.opacity(0), Color.purple.opacity(0.3)]), startPoint: .top, endPoint: .bottom)
            }
        )
        .clipShape(RoundedRectangle(cornerRadius: Constants.roundedRectCornerRadius))
        .overlay(
            RoundedRectangle(cornerRadius: Constants.roundedRectCornerRadius)
                .strokeBorder(Color.white, lineWidth: 3)
        )
        .shadow(radius: Constants.shadow)
    }
}

#Preview {
    ButtonView(redSlider: .constant(50), greenSlider: .constant(50), blueSlider: .constant(50), foregroundColor: .constant(.red), text: .constant("Set Color"))
}
