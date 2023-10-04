//
//  PodcastView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct PodcastView: View {
    var date = [
        "27.06.2023",
        "24.06.2023"
        ]
       
    var title = [
    "Говорим правильно",
    "Прогулки"
    ]
    
    var article = [
        "Программа «Говорим правильно» - это совместный проект «Радио 7 на семи холмах» и портала Грамота.Ру о правилах в русском языке. Ведущий рубрики - кандидат филологических наук Владимир Пахомов в простой и легкой манере рассказывает о сложных и даже  курьезных случаях произношения слов.",
        "В пятницу, субботу и воскресенье известный московский экскурсовод и знаток города на семи холмах Филипп Смирнов открывает для вас все секреты Москвы и предлагает отличные варианты для прогулок по городу!"
        ]
    
    var body: some View {
        NavigationStack {
            Text("ПОДКАСТЫ")
                .font(.title)
            List(0..<title.count, id: \.self) { index in
                PodcastCellView(
                    date: date[index],
                    title: title[index],
                    article: article[index]
                    )
                    .listRowSeparator(.hidden)
                    }
                    .listStyle(.plain)
                    }
                    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastView()
    }
}


