//
//  ContentView.swift
//  Colors
//
//  Created by Raymond Ho on 2023-12-16.
//

import SwiftUI

struct ContentView: View {
    @State private var redSlider = 0.5
    @State private var greenSlider = 0.5
    @State private var blueSlider = 0.5
    
    @State private var confirmRed = 0.5
    @State private var confirmGreen = 0.5
    @State private var confirmBlue = 0.5
    
    var body: some View {
        VStack {
            
            Text("Color Picker")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 350, height: 350)
                .foregroundStyle(Color(red: confirmRed, green: confirmGreen, blue: confirmBlue))
            
            Group {
                let roundedRed = Int((redSlider * 255).rounded())
                let roundedGreen = Int((greenSlider * 255).rounded())
                let roundedBlue = Int((blueSlider * 255).rounded())
                
                Text("Red")
                HStack {
                    Slider(value: $redSlider, in: 0...1)
                    Text("\(roundedRed)")
                }
                
                Text("Green")
                HStack {
                    Slider(value: $greenSlider, in: 0...1)
                    Text("\(roundedGreen)")
                }
                
                Text("Blue")
                HStack {
                    Slider(value: $blueSlider, in: 0...1)
                    Text("\(roundedBlue)")
                }
            }
            .frame(maxWidth: 350)
            
            Button("Set Color") {
                confirmRed = redSlider
                confirmGreen = greenSlider
                confirmBlue = blueSlider
            }
        }
    }
}

#Preview {
    ContentView()
}
