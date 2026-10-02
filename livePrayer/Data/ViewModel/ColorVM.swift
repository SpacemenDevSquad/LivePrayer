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
    
    let defaultPalette = ColorPalette(
        primary: .white,
        secondary: .white,
        thirdColor: .white,
        primaryText: .white,
        secondaryText: .white,
        toolBarColor: .light
    )
    
    init() {
        getColors()
    }
    
    func getColors() {
        colorPalettes["Green"] = ColorPalette(
            primary: Color(hex: "#078C4E"),
            secondary: Color(hex: "#0D734D"),
            thirdColor: Color(hex: "#0D0D0D"),
            primaryText: Color(hex: "#D9D9D9"),
            secondaryText: Color(hex: "#c9c9c9"),
            toolBarColor: .dark
        )
    }
}
