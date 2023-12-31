//
//  TopView.swift
//  Colors
//
//  Created by Raymond Ho on 2023-12-30.
//

import SwiftUI

struct TopView: View {
    @Binding var title: String
    @Binding var foregroundColor: Color
    
    var body: some View {
        VStack {
            Title(text: title)
            ColorView(foregroundColor: $foregroundColor)
        }
    }
}

#Preview {
    TopView(title: .constant("Color Picker"), foregroundColor: .constant(.red))
}
