//
//  TopView.swift
//  Colors
//
//  Created by Raymond Ho on 2023-12-30.
//

import SwiftUI

struct TopView: View {
    @Binding var foregroundColor: Color
    
    var body: some View {
        VStack {
            Text("Color Picker")
                .font(.largeTitle)
                .fontWeight(.bold)
            ColorView(foregroundColor: $foregroundColor)
        }
    }
}

#Preview {
    TopView(foregroundColor: .constant(.red))
}
