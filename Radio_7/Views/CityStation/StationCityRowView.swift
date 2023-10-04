//
//  StationCityRowView.swift
//  Radio_7
//
//  Created by Аня Беликова on 04.10.2023.
//

import SwiftUI

struct StationCityRowView: View {
    var city: String
    var wave: String
    
    var body: some View {
        HStack {
            Text("\(city)")
                .bold(true)
                .font(.title3)
            Spacer()
            Text("\(wave)")
                .foregroundColor(.gray)
        }
    }
}

struct StationCityRowView_Previews: PreviewProvider {
    static var previews: some View {
        StationCityRowView(city: "Ростов-на-Дону", wave: "89,4  FM")
    }
}
