//
//  CityStationView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct CityStationView: View {
    @EnvironmentObject var coordinator: Coordinator
    @EnvironmentObject var dataStore: DataStore
    @State var station = Station()
     
    var body: some View {
        VStack(spacing: 30) {
            ZStack {
                Rectangle()
                    .foregroundColor(Color(red: 217/256, green: 217/256, blue: 217/256, opacity: 1.0))
                    .frame(maxWidth: .infinity, maxHeight: 120)
                HStack {
                    TextField("Поиск радиостанции:", text: $station.stationName)
                        .frame(maxHeight: 30)
                        .background(.white)
                        .foregroundColor(.black)
                        .padding()
                    Spacer()
                    Button(action: {coordinator.navigateTo(screen: .player)}) {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .bold(true)
                    }
                }
                .padding()
            }
            List(0..<dataStore.citiesStation.count, id: \.self) { index in
                Button(action: {coordinator.navigateTo(screen: .player)}) {
                    StationCityRowView(
                        city: dataStore.citiesStation[index],
                        wave: dataStore.waves[index]
                    )
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            
        }
        
    }
}

struct CityStationView_Previews: PreviewProvider {
    static var previews: some View {
        CityStationView()
    }
}
