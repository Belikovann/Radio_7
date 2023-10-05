//
//  EpisodeView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct EpisodeView: View {
    var name = [
    "Происхождение и значение выражения: «с гаком»",
    "Происхождение и значение слова: «суеверный»",
    "Происхождение и значение слова «изгваздаться»",
    "Происхождение и значение выражения: «таким макаром»"
    ]
    var time = [
    "1 мин.",
    "1 мин.",
    "1 мин.",
    "1 мин."
    ]
    var date = [
    "27.06.2023",
    "27.06.2023",
    "27.06.2023",
    "27.06.2023"
    ]
    
    var body: some View {
        NavigationStack {
            HStack {
                Text("Говорим правильно")
                    .font(.title)
                Spacer()
                Image("xmark")
            }
            List(0..<time.count, id: \.self) { index in
                EpisodeCellView(
                    name: name[index],
                    time: time[index],
                    date: date[index]
                )
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeView()
    }
}
