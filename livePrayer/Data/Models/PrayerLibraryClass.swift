//
//  PrayerLibraryStruct.swift
//  Live Prayer
//
//  Created by Peter Brumbach on 10/1/26.
//

import SwiftUI

class PrayerLibrary : Identifiable {
    var id: UUID = UUID()
    var title: String
    var prayers: [PrayerRequest]
    
    init(_ title: String) {
        self.title = title
        prayers = []
    }
}
