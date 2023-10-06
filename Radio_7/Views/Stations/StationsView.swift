//
//  StationsView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct StationsView: View {
    @EnvironmentObject var coordinator: Coordinator
    @EnvironmentObject var dataStore: DataStore

    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Button(action: {coordinator.navigateTo(screen: .player)}) {
                    Image("burger.menu")
                }
                    .padding()
                Text("ПОТОКИ")
            }
            .font(.title)
            List(0..<dataStore.stations.count, id: \.self) { index in
                Button(action: {coordinator.navigateTo(screen: .mainPhoto)}) {
                    StationRowView(
                        station: dataStore.stations[index],
                        artist: dataStore.artists[index],
                        track: dataStore.tracks[index])
                    .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
        }
    }
}

struct StationsView_Previews: PreviewProvider {
    static var previews: some View {
        StationsView()
    }
}
