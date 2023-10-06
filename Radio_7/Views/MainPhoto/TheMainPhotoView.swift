//
//  TheMainPhotoView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct TheMainPhotoView: View {
    @EnvironmentObject var coordinator: Coordinator
    @EnvironmentObject var dataStore: DataStore
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            NavigationStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Button(action: {coordinator.navigateTo(screen: .stations)}) {
                                Image("burger.menu")
                            }
                            Button(action: {coordinator.navigateTo(screen: .city)}) {
                                Text("Москва")
                                    .foregroundColor(.gray)
                                Image("geomap")
                            }
                            Spacer()
                            Button(action: {coordinator.navigateTo(screen: .settings)}) {
                                Image(systemName: "gearshape")
                                    .foregroundColor(.gray)
                            }
                        }
                        Image("horizontal.logo")
                        Text("МУЗЫКА ЛЮБВИ")
                        ImageView(width: 252, height: 252)
                        Text("Time Stood Still")
                        Text("Madonna")
                        HStack(spacing: 30) {
                            Image("list.icon")
                            Image("play")
                            Image(systemName: "ellipsis")
                        } .font(.title)
                        List(0..<dataStore.tracks.count, id: \.self)
                        { index in
                            Button(action: {coordinator.navigateTo(screen: .player)}) {
                                TrackView(
                                    artist: dataStore.artists[index],
                                    song: dataStore.tracks[index]
                                )
                            }
                        }
                        .listStyle(.plain)
                    }
                    .padding()
            }
            Button(action: {coordinator.navigateTo(screen: .news)}) {
                Image("Frame")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 108, height: 108)
            }
        }
    }
}

struct TheMainPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        TheMainPhotoView()
    }
}
