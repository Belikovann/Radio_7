//
//  ArticleCellView.swift
//  Radio_7
//
//  Created by Аня Беликова on 06.10.2023.
//

import SwiftUI

struct ArticleCellView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            ImageView(width: .infinity, height: 215.36)
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Text("7 классных фильмов с Джей Ло")
                        .font(.title2)
                        .bold(true)
                    Spacer()
                    Button(action: {}) {
                      Image("share")
                    }
                }
                Text("21 июля в 18:00")
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            Text("«Госпожа горничная» (2002)")
                .bold(true)
            Text("История Золушки – один из самых популярных сказочных сюжетов, кочующий из культуры в культуру, из столетия в столетие. Вот и мелодрама «Госпожа горничная» пополнила и без того огромный список произведений популярной культуры, использующих вариацию Золушки. У фильма есть очевидные преимущества перед конкурентами: во-первых, Джей Ло в главной роли, во-вторых, Рэйф Файнс в качестве кавалера-принца, и, надо сказать, что этот образ идет ему ничуть не меньше безносого змееподобного злодея из поттерианы. Наконец, Нью-Йорк в качестве сцены. «Госпожа горничная» - прекрасная сказка для взрослых, адаптированная под современные реалии. Она пробуждает в нас веру в лучшее, и это замечательно. Классический слезливый ромком начала нулевых годов прошлого века и очередной попсовый бестселлер Адама Шенкмана. Впрочем, шикарный актёрский состав выгодно отличает его на фоне множества схожих по формату картин. Химию между Мэттью МакКонахи и Джей Ло отметили все. Кажется, будто звёздная парочка не играет, а переживает всю палитру чувств по-настоящему. Во всяком случае, эмоции зрителей, возникающие при просмотре «Свадебного переполоха», точно абсолютно реальны. Так что это прекрасный фильм для всех, кому хочется поплакать, посмеяться и, наконец, завизжать от умиления и полного катарсиса.")
                .font(.callout)
        }
    }
        
}

struct ArticleCellView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCellView()
    }
}
