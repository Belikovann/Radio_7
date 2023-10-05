//
//  EpicodeCellView.swift
//  Radio_7
//
//  Created by Аня Беликова on 05.10.2023.
//

import SwiftUI

struct EpisodeCellView: View {
    var name: String
    var time: String
    var date: String
    
    var body: some View {
        VStack(spacing: 5) {
            HStack(alignment: .top, spacing: 20) {
                Image("play")
                VStack(alignment: .leading) {
                    Text("\(name)")
                        .font(.title3)
                        .bold(true)
                    HStack {
                        Text("\(time)")
                        Text("\(date)")
                            .foregroundColor(.gray)
                    }
                    .font(.callout)
                }
            }
        }
    }
}

struct EpisodeCellView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeCellView(name: "Происхождение и значение выражения: «с гаком»", time: "1 мин.", date: "27.06.2023")
    }
}
