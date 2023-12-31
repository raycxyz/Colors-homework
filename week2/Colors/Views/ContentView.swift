import SwiftUI

struct ContentView: View {
    @State private var title = "Color Picker"
    @State private var buttonText = "Set Color"
    @State private var redSlider = 0.0
    @State private var greenSlider = 0.0
    @State private var blueSlider = 0.0
    @State private var foregroundColor = Color(red: 0.5, green: 0.5, blue: 0.5)
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        ZStack {
            BackgroundColorView()
   
            VStack {
                if verticalSizeClass == .regular && horizontalSizeClass == .compact {
                    TopView(title: $title, foregroundColor: $foregroundColor)
                    
                    BottomView(redSlider: $redSlider, greenSlider: $greenSlider, blueSlider: $blueSlider, foregroundColor: $foregroundColor, text: $buttonText)
                } else {
                    HStack {
                        TopView(title: $title, foregroundColor: $foregroundColor)
                        Spacer()
                        
                        BottomView(redSlider: $redSlider, greenSlider: $greenSlider, blueSlider: $blueSlider, foregroundColor: $foregroundColor, text: $buttonText)
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
