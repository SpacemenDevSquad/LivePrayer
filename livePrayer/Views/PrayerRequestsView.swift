//
//  PrayerRequestsView.swift
//  Live Prayer
//
//  Created by Peter Brumbach on 10/1/26.
//

import SwiftUI

struct PrayerRequestsView: View {
    
    @StateObject var colorVM = ColorVM()
    
    var body: some View {
        let currentPalette = colorVM.colorPalettes["Calm", default: colorVM.defaultPalette]
        
        ZStack {
            currentPalette.background.ignoresSafeArea()
            ScrollView {
                LazyVStack(spacing: 20) {
                    Button {
                        
                    } label: {
                        VStack(alignment: .leading) {
                            HStack {
                                Text("How long can I make this before it gets weird").font(.system(.title)).foregroundStyle(currentPalette.primaryText)
                            }
                            Divider()
                                .frame(height: 1)
                                .background(currentPalette.background)
                            Text("October 1st, 2026")
                                .font(.system(.subheadline))
                                .padding(.vertical)
                                .foregroundStyle(currentPalette.secondaryText)
                            Text("Description goes here...")
                                .foregroundStyle(currentPalette.primaryText)
                        }
                        .padding(20)
                        .multilineTextAlignment(.leading)
                        .background(RoundedRectangle(cornerRadius: 20).fill(currentPalette.foreground))
                    }
                }
                .padding(.horizontal)
            }.padding(.top, 40)
        }
    }
}

#Preview {
    PrayerRequestsView()
}
