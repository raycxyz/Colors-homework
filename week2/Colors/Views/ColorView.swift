//
//  ColorView.swift
//  Colors
//
//  Created by Raymond Ho on 2023-12-30.
//

import SwiftUI

struct BackgroundColorView: View {
    var body: some View {
        Color("BackgroundColor")
            .ignoresSafeArea()
    }
}

struct ColorView: View {
    @Binding var foregroundColor: Color
    @Environment(\.verticalSizeClass) var verticalSizeClass

    var body: some View {
        
        RoundedRectangle(cornerRadius: Constants.roundedRectCornerRadius)
            .frame(width: Constants.generalFrameSize, height: (verticalSizeClass == .regular) ? Constants.generalFrameSize : 250)
            .foregroundStyle(foregroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: Constants.roundedRectCornerRadius)
                    .strokeBorder(.brown, lineWidth: 15)
                    .foregroundStyle(.brown)
            )
            .shadow(radius: Constants.shadow)
    }
}

#Preview {
    ColorView(foregroundColor: .constant(.blue))
}
