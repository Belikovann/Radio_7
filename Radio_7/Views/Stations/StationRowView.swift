//
//  StationRowView.swift
//  Radio_7
//
//  Created by Аня Беликова on 04.10.2023.
//

import SwiftUI

struct StationRowView: View {
    var station: String
    var artist: String
    var track: String
    
    var body: some View {
            VStack(spacing: 5) {
                HStack(alignment: .top) {
                    Circle()
                        .frame(width: 24)
                        .foregroundColor(Color(red: 217/256, green: 217/256, blue: 217/256, opacity: 1.0))
                    VStack(alignment: .leading) {
                        Text("\(station)")
                            .font(.title3)
                            .bold(true)
                        Text("\(artist)")
                            .font(.callout)
                            .bold(true)
                        Text("\(track)")
                            .font(.caption)
                    }
                }
        }
    }
}

struct StationRowView_Previews: PreviewProvider {
    static var previews: some View {
        StationRowView(station: "станция", artist: "артист", track: "композация")
    }
}
