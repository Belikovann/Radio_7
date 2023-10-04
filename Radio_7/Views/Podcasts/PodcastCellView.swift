//
//  PodcastCellView.swift
//  Radio_7
//
//  Created by Аня Беликова on 04.10.2023.
//

import SwiftUI

struct PodcastCellView: View {
    var date: String
    var title: String
    var article: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            ImageView(width: 317, height: 196.15)
                Text("\(date)")
                    .font(.callout)
                    .foregroundColor(.gray)
                Text("\(title)")
                    .font(.title)
                Text("\(article)")
                    .font(.caption)
                    .foregroundColor(.gray)
        }
    }
}

struct PodcastCellView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastCellView(date: "", title: "", article: "")
    }
}
