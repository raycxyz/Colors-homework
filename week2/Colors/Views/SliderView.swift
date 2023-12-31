//
//  SliderView.swift
//  Colors
//
//  Created by Raymond Ho on 2023-12-30.
//

import SwiftUI

struct SliderView: View {
    @Binding var redSlider: Double
    @Binding var greenSlider: Double
    @Binding var blueSlider: Double
    
    var body: some View {
        
        VStack {
            Text("Red")
            HStack {
                Slider(value: $redSlider, in: 0...Constants.colorRange)
                Text("\(Int(redSlider.rounded()))")
            }
            
            Text("Green")
            HStack {
                Slider(value: $greenSlider, in: 0...Constants.colorRange)
                Text("\(Int(greenSlider.rounded()))")
            }
            
            Text("Blue")
            HStack {
                Slider(value: $blueSlider, in: 0...Constants.colorRange)
                Text("\(Int(blueSlider.rounded()))")
            }
        }
        .frame(width: Constants.generalFrameSize)
    }
    
}

#Preview {
    SliderView(redSlider: .constant(50.0), greenSlider: .constant(50.0), blueSlider: .constant(50.0))
}
