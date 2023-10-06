//
//  ContentView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        NavigationView{
            switch coordinator.currentScreen {
            case .news:
                NewsView()
            case .player:
                PlayerView()
            case .podcasts:
                PodcastView()
            case .feed:
                FeedView()
            case .cityStation:
                CityStationView()
            case .stations:
                StationsView()
            case .loader:
                LoaderView()
            case .ad:
                ADView()
            case .article:
                ArticleView()
            case .city:
                CityStationView()
            case .settings:
                SettingsView()
            case .alarm:
                AlarmView()
            case .episode:
                EpisodeView()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Coordinator())
    }
}
