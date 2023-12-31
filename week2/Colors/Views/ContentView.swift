import SwiftUI

struct ContentView: View {
    @State private var redSlider = 0.0
    @State private var greenSlider = 0.0
    @State private var blueSlider = 0.0
    @State private var foregroundColor = Color(red: 0.5, green: 0.5, blue: 0.5)
    
    var body: some View {
        VStack {
            
            Text("Color Picker")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            RoundedRectangle(cornerRadius: Constants.roundedRectCornerRadius)
                .frame(width: Constants.generalFrameSize, height: Constants.generalFrameSize)
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
            .frame(maxWidth: Constants.generalFrameSize)
            
            Button("Set Color") {
                foregroundColor = Color(red: redSlider / 255, green: greenSlider / 255, blue: blueSlider / 255)
            }
        }
    }
}

#Preview {
    ContentView()
}
