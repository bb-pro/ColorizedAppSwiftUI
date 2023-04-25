//
//  ContentView.swift
//  ColorizedApp
//
//  Created by Bektemur Mamashayev on 25/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sampleColor = Color.green
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    
    var body: some View {
        VStack {
            Text("Colorized App")
            Rectangle()
                .frame(width: 300, height: 150)
                .cornerRadius(20)
                .foregroundColor(Color(
                    red: redValue / 255,
                    green: greenValue / 255,
                    blue: blueValue / 255
                )
                )
            ColorSliderView(sliderColor: .red, value: $redValue)
            ColorSliderView(sliderColor: .green, value: $greenValue)
            ColorSliderView(sliderColor: .blue, value: $blueValue)
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
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(sliderColor)
            Text("\(lround(value))").foregroundColor(sliderColor)
                .frame(width: 40)
        }
    }
}
