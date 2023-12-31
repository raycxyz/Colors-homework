//
//  TextView.swift
//  Colors
//
//  Created by Raymond Ho on 2023-12-30.
//

import SwiftUI

struct Title: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}

#Preview {
    Title(text: "Color Picker")
}
