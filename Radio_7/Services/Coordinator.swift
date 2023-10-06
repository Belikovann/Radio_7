//
//  Coordinator.swift
//  Radio_7
//
//  Created by Аня Беликова on 06.10.2023.


import SwiftUI

class Coordinator: ObservableObject {

    @Published var currentScreen: Screens = Screens.mainPhoto

    enum Screens {
        case news, player, podcasts, feed, cityStation, stations, loader, ad, article, city, settings, alarm, episode, mainPhoto
    }

    func navigateTo(screen: Screens) {
        currentScreen = screen
    }

//    func navigateBack() {
//        switch currentScreen {
//        case .news: break
//        case .player: currentScreen =
//        case .podcasts
//        case .feed
//        case .cityStation
//        case .stations
//        case .loader
//        case .ad
//        case .article
//        case .stations
//        case .city
//        case .settings
//        case .alarm
//        case .episode
//        }
//    }
}
