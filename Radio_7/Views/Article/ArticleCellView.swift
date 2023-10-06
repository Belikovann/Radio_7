//
//  ArticleCellView.swift
//  Radio_7
//
//  Created by Аня Беликова on 06.10.2023.
//

import SwiftUI

struct ArticleCellView: View {
    var articleDate: String
    var articleTitle: String
    var articleName: String
    var articleText: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            ImageView(width: .infinity, height: 215.36)
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Text("\(articleTitle)")
                        .font(.title2)
                        .bold(true)
                    Spacer()
                    Button(action: {}) {
                      Image("share")
                    }
                }
                Text("\(articleDate)")
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            Text("\(articleName)")
                .bold(true)
            Text("\(articleText)")
                .font(.callout)
        }
    }
        
}

struct ArticleCellView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCellView(articleDate: "21 июля в 18:00", articleTitle: "7 классных фильмов с Джей Ло", articleName: "«Госпожа горничная» (2002)", articleText: "Текст")
    }
}
