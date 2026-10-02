//
//  PrayersVM.swift
//  Live Prayer
//
//  Created by Peter Brumbach on 10/1/26.
//

import Combine
import SwiftUI

class PrayersVM: ObservableObject {
    @Published var prayerLibraries: [PrayerLibrary] = []
    
    init() {
        getPrayers()
    }
    
    func getPrayers() {
        prayerLibraries.append(PrayerLibrary("Example Library"))
        prayerLibraries.first {$0.title == "Example Library"}?.prayers.append(PrayerRequest(
            title: "First Prayer Request",
            date: Date().formatted(date: .long, time: .omitted),
            description: "The first prayer description blah blah blah blah blah blah blah"
        ))
        prayerLibraries.first {$0.title == "Example Library"}?.prayers.append(PrayerRequest(
            title: "Second Prayer Request",
            date: Date().formatted(date: .long, time: .omitted),
            description: "The second prayer description blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah"
        ))
    }
}
