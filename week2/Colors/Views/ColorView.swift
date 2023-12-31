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
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        VStack {
            if verticalSizeClass == .regular && horizontalSizeClass == .compact {
                RoundedRectangle(cornerRadius: Constants.roundedRectCornerRadius)
                    .frame(width: Constants.generalFrameSize, height: Constants.generalFrameSize)
                    .foregroundStyle(foregroundColor)
                    .shadow(radius: Constants.shadow)
            } else {
                RoundedRectangle(cornerRadius: Constants.roundedRectCornerRadius)
                    .frame(width: Constants.generalFrameSize, height: 250)
                    .foregroundStyle(foregroundColor)
                    .shadow(radius: Constants.shadow)
            }
        }
    }
}

#Preview {
    ColorView(foregroundColor: .constant(.blue))
}
