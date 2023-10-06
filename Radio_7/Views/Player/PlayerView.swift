//
//  PlayerView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct PlayerView: View {
    @State private var isCityStationViewPresent = false
    @EnvironmentObject var coordinator: Coordinator
    
    
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
                    Button(action: {coordinator.navigateTo(screen: .stations)}) {
                        Image("burger.menu")
                    }
                    Button(action: {coordinator.navigateTo(screen: .city)}) {
                        Text("Москва")
                            .foregroundColor(.gray)
                        Image("geomap")
                    }
                }
                Image("horizontal.logo")
                Text("МУЗЫКА ЛЮБВИ")
                ImageView(width: 252, height: 252)
                Text("Time Stood Still")
                Text("Madonna")
                HStack(spacing: 30) {
                    Image("list.icon")
                    Button(action: {coordinator.navigateTo(screen: .mainPhoto)}) {
                        Image("play")
                    }
                    Image(systemName: "ellipsis")
                } .font(.title)
                List(0..<song.count, id: \.self)
                { index in
                    Button(action: {coordinator.navigateTo(screen: .podcasts)}) {
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
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
