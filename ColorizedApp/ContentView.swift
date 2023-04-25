//
//  ContentView.swift
//  ColorizedApp
//
//  Created by Bektemur Mamashayev on 25/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sampleColor = Color.green
    @State private var redValue = 0.0
    @State private var greenValue = 0.0
    @State private var blueValue = 0.0
    
    
    var body: some View {
        VStack {
            Text("Colorized App")
            Rectangle()
                .frame(width: 300, height: 150)
                .cornerRadius(20)
                .foregroundColor(sampleColor)
            ColorSliderView(sliderColor: .red, value: $redValue)
            Spacer()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct ColorSliderView: View {
    let sliderColor: Color
    @Binding var value: Double
    var body: some View {
        HStack(spacing: 20){
            Text("0").foregroundColor(.red)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(sliderColor)
            Text("\(lround(value))").foregroundColor(.red)
                .frame(width: 40)
        }
    }
}
