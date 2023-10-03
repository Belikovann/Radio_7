//
//  NewsView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct NewsView: View {
//    Add after setting API
//    @StateObject private var newsViewModel = NewsViewModel()
    
    var body: some View {
        NavigationStack {
                Text("НОВОСТИ")
                    .font(.title)
                    .padding()
                List(0..<7, id: \.self) { index in
                    ImageView(width: 317, height: 195.58)
                        .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
                
        }
        .padding()
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
