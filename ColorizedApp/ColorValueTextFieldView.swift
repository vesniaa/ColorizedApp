//
//  ColorValueTextFieldView.swift
//  ColorizedApp
//
//  Created by Евгения Аникина on 16.05.2022.
//

import SwiftUI

struct ColorValueTextFieldView: View {
    
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue) { _ in checkValue()
        }
        .frame(width: 55, alignment: .trailing)
        .textFieldStyle(.roundedBorder)
        .multilineTextAlignment(.trailing)
        .keyboardType(.decimalPad)
        .alert("Wrong format", isPresented: $showAlert, actions: {}) {
            Text("Please enter value from 0 to 255")
        }
    }
}

extension ColorValueTextFieldView {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        textValue = "0"
    }
}
struct ColorValueTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ColorValueTextFieldView(textValue: .constant("150"), value: .constant(150.0))
    }
}
