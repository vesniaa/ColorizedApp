//
//  ColorView.swift
//  ColorizedApp
//
//  Created by Евгения Аникина on 16.05.2022.
//

import SwiftUI

struct ColorView: View {
        let color: UIColor
        var body: some View {
            Color(color)
                .frame(height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 4))
                .padding()
        }
    }

    struct ColorView_Previews: PreviewProvider {
        static var previews: some View {
            ColorView(color: .gray)
        }
    }
