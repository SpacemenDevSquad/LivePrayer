//
//  MainView.swift
//  Live Prayer
//
//  Created by Peter Brumbach on 10/1/26.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NavigationStack {
                PrayerRequestsView()
                    .navigationTitle("Prayer Requests")
            }
            .tabItem {
                Label("Requests", systemImage: "book.pages")
            }
        }
    }
}

#Preview {
    MainView()
}
