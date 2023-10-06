//
//  CityStationView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct CityStationView: View {
    @EnvironmentObject var coordinator: Coordinator
    @State var station = Station()
    
    var cities = [
    "Ростов-на-Дону",
    "Тверь",
    "Нижний Новогород",
    "Москва",
    "Челябинск",
    "Гусь-Хрустальный",
    "Новороссийск",
    "Пермь",
    "Славянск-на-Кубани",
    "Великий Новогород"
    ]
    
    var waves = [
        "89,4 FM",
        "106,3 FM",
        "100,0 FM",
        "104,7 FM",
        "105,4 FM",
        "106,6 FM",
        "107,8 FM",
        "101,1 FM",
        "89,9 FM",
        "99,4 FM"
    ]
    
    var body: some View {
        VStack(spacing: 30) {
            ZStack {
                GeometryReader { geometry in
                    Color(red: 217/256, green: 217/256, blue: 217/256, opacity: 1.0)
                        .frame(width: geometry.size.width, height: 100)
                }
                HStack {
                    TextField("Поиск радиостанции:", text: $station.stationName)
                        .frame(maxHeight: 30)
                        .background(.white)
                        .foregroundColor(.black)
                    Spacer()
                    Button(action: {coordinator.navigateTo(screen: .player)}) {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .bold(true)
                    }
                }
                .padding()
            }
            List(0..<waves.count, id: \.self) { index in
                StationCityRowView(
                    city: cities[index],
                    wave: waves[index]
                )
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
