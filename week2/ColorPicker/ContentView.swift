//
//  ContentView.swift
//  Colors
//
//  Created by Raymond Ho on 2023-12-16.
//

import SwiftUI

struct ContentView: View {
    @State private var redSlider = 0.0
    @State private var greenSlider = 0.0
    @State private var blueSlider = 0.0
    @State private var foregroundColor = Color(red: 0, green: 0, blue: 0)
    

    
    var body: some View {
        VStack {
            
            Text("Color Picker")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 350, height: 350)
                .foregroundStyle(foregroundColor)
            
            Group {
   
                
                Text("Red")
                HStack {
                    Slider(value: $redSlider, in: 0...255)
                    Text("\(Int(redSlider.rounded()))")
                }
                
                Text("Green")
                HStack {
                    Slider(value: $greenSlider, in: 0...255)
                    Text("\(Int(greenSlider.rounded()))")
                }
                
                Text("Blue")
                HStack {
                    Slider(value: $blueSlider, in: 0...255)
                    Text("\(Int(blueSlider.rounded()))")
                }
            }
            .frame(maxWidth: 350)
            
            Button("Set Color") {
              foregroundColor = Color(red: redSlider / 255, green: greenSlider / 255, blue: blueSlider / 255)            }
        }
    }
}

#Preview {
    ContentView()
}
