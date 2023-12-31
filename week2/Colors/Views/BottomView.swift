//
//  BottomView.swift
//  Colors
//
//  Created by Raymond Ho on 2023-12-30.
//

import SwiftUI

struct BottomView: View {
    @Binding var redSlider: Double
    @Binding var greenSlider: Double
    @Binding var blueSlider: Double
    @Binding var foregroundColor: Color
    @Binding var text: String
    
    
    var body: some View {
        VStack {
            SliderView(redSlider: $redSlider, greenSlider: $greenSlider, blueSlider: $blueSlider)
            ButtonView(redSlider: $redSlider, greenSlider: $greenSlider, blueSlider: $blueSlider, foregroundColor: $foregroundColor, text: $text)
        }
    }
}

#Preview {
    BottomView(redSlider: .constant(50.0), greenSlider: .constant(50.0), blueSlider: .constant(50.0), foregroundColor: .constant(Color(.red)), text: .constant("Set Color"))
}
