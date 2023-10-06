//
//  ArticleView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct ArticleView: View {
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        NavigationStack {
            List(0..<7, id: \.self) { index in
                ArticleCellView()
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
