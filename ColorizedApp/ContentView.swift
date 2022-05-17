//
//  ContentView.swift
//  ColorizedApp
//
//  Created by Евгения Аникина on 17.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = 150.0
    @State private var green = 150.0
    @State private var blue = 150.0
    
    @FocusState private var isInputActive: Bool
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemYellow).ignoresSafeArea()
                VStack(spacing: 40) {
                    ColorView(red: red, green: green, blue: blue)
                    
                    VStack {
                        ColorSliderView(sliderValue: $red, color: .red)
                        ColorSliderView(sliderValue: $green, color: .green)
                        ColorSliderView(sliderValue: $blue, color: .blue)
                    }
                    .frame(height: 120)
                    .focused($isInputActive)
                    .toolbar {
                        ToolbarItemGroup(placement: .keyboard) {
                            Spacer()
                            Button("Done") {
                                isInputActive = false
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ContentView()
        }
    }
}

