//
//  ArticleView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct ArticleView: View {
    @EnvironmentObject var coordinator: Coordinator
    @EnvironmentObject var dataStore: DataStore

    
    var body: some View {
        NavigationStack {
            List(0..<dataStore.articleText.count, id: \.self) { index in
                Button(action: {coordinator.navigateTo(screen: .mainPhoto)}) {
                    ArticleCellView(
                        articleDate: dataStore.articleDates[index],
                        articleTitle: dataStore.articleTitles[index],
                        articleName: dataStore.articleNames[index],
                        articleText: dataStore.articleText[index]
                    )
                }
            }
            .listStyle(.plain)
            
            .navigationTitle("7 классных фильмов с Джей Ло")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        coordinator.navigateTo(screen: .feed)
                    }) {
                        Image("arrow.left")
                    }
            )
        }
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView()
    }
}
