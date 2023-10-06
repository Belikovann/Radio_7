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
    @EnvironmentObject var coordinator: Coordinator
    
    
    var body: some View {
        NavigationStack {
            Text("НОВОСТИ")
                .font(.custom("TT-Travels-Trial-Medium", size: 28))
                .padding()
            
            List(0..<7, id: \.self) { index in
                Button(action: {coordinator.navigateTo(screen: .player)}) {
                    ImageView(width: 317, height: 195.58)
                        .listRowSeparator(.hidden)
                }
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
