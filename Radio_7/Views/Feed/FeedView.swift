//
//  FeedView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct FeedView: View {
    @EnvironmentObject var coordinator: Coordinator
    var body: some View {
        NavigationStack {
            List {
                Button(action: {coordinator.navigateTo(screen: .article)}) {
                    FeedGroupView()
                }
            }
            .padding()
            .listStyle(.plain)
            
            .navigationTitle("Программа")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        coordinator.navigateTo(screen: .player)
                    }) {
                        Image("arrow.left")
                            .foregroundColor(.black)
                    }
            )
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
