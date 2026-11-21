//
//  MainView.swift
//  Live Prayer
//
//  Created by Peter Brumbach on 10/1/26.
//

import SwiftUI

struct MainView: View {
    @StateObject var colorVM = ColorVM()
    @StateObject var prayersVM = PrayersVM()
    
    var body: some View {
        let currentPalette: ColorPalette = colorVM.colorPalettes["Green", default: colorVM.defaultPalette]
        let currentPrayerLib: PrayerLibrary = prayersVM.prayerLibraries[0]
        
        TabView {
            NavigationStack {
                PrayerRequestsView(currentPalette: currentPalette, prayers: currentPrayerLib.prayers)
                    .navigationTitle(currentPrayerLib.title).foregroundStyle(currentPalette.primaryText)
                    .toolbarColorScheme(currentPalette.toolBarColor, for: .navigationBar)
            }
            .tabItem {
                Label("Requests", systemImage: "book.pages").foregroundStyle(currentPalette.thirdColor)
            }
        }
        .tint(currentPalette.thirdColor)
    }
}

#Preview {
    MainView()
}
