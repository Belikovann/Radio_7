//
//  PodcastCellView.swift
//  Radio_7
//
//  Created by Аня Беликова on 04.10.2023.
//

import SwiftUI

struct PodcastCellView: View {
    
    
    var body: some View {
        VStack(alignment: .center) {
            ImageView(width: 317, height: 196.15)
            VStack(alignment: .leading, spacing: 10) {
                Text("27.06.2023")
                    .font(.callout)
                    .foregroundColor(.gray)
                Text("Говорим правильно")
                    .font(.title)
                Text("Программа «Говорим правильно» - это совместный проект «Радио 7 на семи холмах» и портала Грамота.Ру о правилах в русском языке. Ведущий рубрики - кандидат филологических наук Владимир Пахомов в простой и легкой манере рассказывает о сложных и даже курьезных случаях произношения слов.")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct PodcastCellView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastCellView()
    }
}
