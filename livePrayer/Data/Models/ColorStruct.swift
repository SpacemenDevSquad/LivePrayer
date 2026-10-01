//
//  ColorStruct.swift
//  Live Prayer
//
//  Created by Peter Brumbach on 10/1/26.
//

import SwiftUI

struct ColorPalette : Identifiable {
    var id: UUID = UUID()
    let foreground: Color
    let background: Color
    let primaryText: Color
    let secondaryText: Color
    let interactables: Color
}
