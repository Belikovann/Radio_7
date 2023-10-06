//
//  EpisodeView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct EpisodeView: View {
    @EnvironmentObject var coordinator: Coordinator
    @EnvironmentObject var dataStore: DataStore
    
    var body: some View {
        NavigationStack {
            HStack {
                Text("Говорим правильно")
                    .font(.title)
                Spacer()
                Button(action: {coordinator.navigateTo(screen: .alarm)}) {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                }
            }
            .padding()
            List(0..<dataStore.episodeName.count, id: \.self) { index in
                EpisodeCellView(
                    name: dataStore.episodeName[index],
                    time: dataStore.episodeTime[index],
                    date: dataStore.episodeDate[index]
                )
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeView()
    }
}
