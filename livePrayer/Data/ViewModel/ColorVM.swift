//
//  ColorVM.swift
//  Live Prayer
//
//  Created by Peter Brumbach on 10/1/26.
//

import Combine
import SwiftUI

class ColorVM: ObservableObject {
    @Published var colorPalettes: [String: ColorPalette] = [:]
    
    init() {
        getColors()
    }
    
    func getColors() {
        colorPalettes["Calm"] = ColorPalette(
            foreground: Color(hex: "#B2DFDB"),
            background: Color(hex: "#4DD0E1"),
            primaryText: Color(hex: "#F9FAFB"),
            secondaryText: Color(hex: "#90A4AE"),
            interactables: Color(hex: "#263238")
        )
    }
}
