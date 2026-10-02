//
//  PrayerRequestStruct.swift
//  Live Prayer
//
//  Created by Peter Brumbach on 10/1/26.
//

import SwiftUI

struct PrayerRequest : Identifiable {
    var id: UUID = UUID()
    var title: String
    let date: String
    var description: String
}
