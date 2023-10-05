//
//  PlayerView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct PlayerView: View {
@State private var isCityStationViewPresent = false

    var artist = [
    "Savage Garden",
    "Eagles",
    "Happy",
    "Waltz OP.64"
    ]
    var song = [
    "Truly Madly Deeply",
    "Hotel California",
    "Pharrell Williams",
    "Frederic Chopin"
    ]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Button(action: {}) {
                        Image("burger.menu")
                    }
                    Text("Москва")
                        .foregroundColor(.gray)
                    Image("geomap")
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
                List(0..<song.count, id: \.self)
                { index in
                    NavigationLink(destination: StationsView()) {
                        TrackView(
                            artist: artist[index],
                            song: song[index]
                        )
                    }
                }
                .listStyle(.plain)
            }
            .padding()
        }
//        .sheet(isPresented: $isCityStationViewPresent) {
//            StationsView(isPresented: $isCityStationViewPresent)
//        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
