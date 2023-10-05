//
//  TrackView.swift
//  Radio_7
//
//  Created by Аня Беликова on 05.10.2023.
//

import SwiftUI

struct TrackView: View {
    var artist: String
    var song: String
    
    var body: some View {
        HStack(spacing: 40) {
            ImageView(width: 45, height: 45)
            VStack(alignment: .leading) {
                Text("\(artist)")
                    .font(.callout)
                    .bold(true)
                Text("\(song)")
                    .font(.caption)
            }
            Spacer()
            Image(systemName: "ellipsis")
        }
    }
}

struct TrackView_Previews: PreviewProvider {
    static var previews: some View {
        TrackView(artist: "артист", song: "композация")
    }
}
