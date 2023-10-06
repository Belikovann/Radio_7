//
//  PodcastView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct PodcastView: View {
    @EnvironmentObject var coordinator: Coordinator
    @EnvironmentObject var dataStore: DataStore
    
    var body: some View {
        NavigationStack {
            Text("ПОДКАСТЫ")
                .font(.title)
            List(0..<dataStore.podcastTitle.count, id: \.self) { index in
                Button(action: {coordinator.navigateTo(screen: .feed)}) {
                    PodcastCellView(
                        date: dataStore.podcastDate[index],
                        title: dataStore.podcastTitle[index],
                        article: dataStore.podcastArticles[index]
                    )
                    .listRowSeparator(.hidden)
                }
                }
            }
                    .listStyle(.plain)
                    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView()
    }
}


