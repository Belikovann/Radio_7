//
//  Radio_7App.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

@main
struct Radio_7App: App {
    @StateObject var coordinator = Coordinator()
    @StateObject var dataStore = DataStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(coordinator)
                .environmentObject(dataStore)
        }
    }
}
