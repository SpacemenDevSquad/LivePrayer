//
//  PrayerRequestsView.swift
//  Live Prayer
//
//  Created by Peter Brumbach on 10/1/26.
//

import SwiftUI

struct PrayerRequestsView: View {
    @State var currentPalette: ColorPalette
    @State var prayers: [PrayerRequest]
    
    var body: some View {
        ZStack {
            currentPalette.secondary.ignoresSafeArea()
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 300))], spacing: 20) {
                    ForEach (prayers) { prayer in
                        Button {
                            
                        } label: {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(prayer.title).font(.system(.title)).foregroundStyle(currentPalette.primaryText)
                                }
                                Divider()
                                    .frame(height: 1)
                                    .background(currentPalette.secondary)
                                Text(prayer.date)
                                    .font(.system(.subheadline))
                                    .padding(.vertical)
                                    .foregroundStyle(currentPalette.secondaryText)
                                Text(prayer.description)
                                    .foregroundStyle(currentPalette.primaryText)
                            }
                            .padding(20)
                            .multilineTextAlignment(.leading)
                            .background(RoundedRectangle(cornerRadius: 20).fill(currentPalette.primary))
                        }
                    }
                }
                .padding(.horizontal)
            }.padding(.top, 40)
        }
    }
}

#Preview {
    @Previewable @StateObject var colorVM = ColorVM()
    @Previewable @StateObject var prayersVM = PrayersVM()
    PrayerRequestsView(currentPalette: colorVM.colorPalettes["Green", default: colorVM.defaultPalette], prayers: prayersVM.prayerLibraries[0].prayers)
}
