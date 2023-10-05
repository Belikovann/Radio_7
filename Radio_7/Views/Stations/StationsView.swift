//
//  StationsView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct StationsView: View {
//    @Binding var isPresented = false
    
    var station = [
    "Радио 7 Москва",
    "Музыка любви",
    "Музыка счастья",
    "Наедине с музыкой"
    ]
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
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Button(action: {}) {
                    Image("burger.menu")
                }
                    .padding()
                Text("ПОТОКИ")
            }
            .font(.title)
            List(0..<artist.count, id: \.self) { index in
                StationRowView(
                    station: station[index],
                    artist: artist[index],
                    song: song[index])
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
    }
}

struct StationsView_Previews: PreviewProvider {
    static var previews: some View {
        StationsView()
//        let isPresented = Binding.constant(false)
//
//        StationsView(isPresented: isPresented)
    }
}
