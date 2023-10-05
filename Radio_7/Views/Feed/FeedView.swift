//
//  FeedView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ImageView(width: 317, height: 196)
                HStack {
                    ImageView(width: 150.47, height: 150.47)
                    ImageView(width: 150.47, height: 150.47)
                }
                HStack {
                    ImageView(width: 150.47, height: 150.47)
                    ImageView(width: 150.47, height: 150.47)
                }
                ImageView(width: 317, height: 196)
            }
            
        }
       
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
