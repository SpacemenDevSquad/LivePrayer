//
//  PrayerRequestsView.swift
//  Live Prayer
//
//  Created by Peter Brumbach on 10/1/26.
//

import SwiftUI

struct PrayerRequestsView: View {
    @State var currentPalette: ColorPalette
    
    var body: some View {
        ZStack {
            currentPalette.secondary.ignoresSafeArea()
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 400))], spacing: 20) {
                    Button {
                        
                    } label: {
                        VStack(alignment: .leading) {
                            HStack {
                                Text("How long can I make this before it gets weird").font(.system(.title)).foregroundStyle(currentPalette.primaryText)
                            }
                            Divider()
                                .frame(height: 1)
                                .background(currentPalette.secondary)
                            Text("October 1st, 2026")
                                .font(.system(.subheadline))
                                .padding(.vertical)
                                .foregroundStyle(currentPalette.secondaryText)
                            Text("Description goes here...")
                                .foregroundStyle(currentPalette.primaryText)
                        }
                        .padding(20)
                        .multilineTextAlignment(.leading)
                        .background(RoundedRectangle(cornerRadius: 20).fill(currentPalette.primary))
                    }
                }
                .padding(.horizontal)
            }.padding(.top, 40)
        }
    }
}

#Preview {
    @Previewable @StateObject var colorVM = ColorVM()
    PrayerRequestsView(currentPalette: colorVM.colorPalettes["Green", default: colorVM.defaultPalette])
}
