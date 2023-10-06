//
//  FeedGroupView.swift
//  Radio_7
//
//  Created by Аня Беликова on 06.10.2023.
//

import SwiftUI

struct FeedGroupView: View {
    var body: some View {
        VStack(spacing: 15) {
            ImageView(width: 317, height: 196)
            HStack(spacing: 15) {
                ImageView(width: 150.47, height: 150.47)
                ImageView(width: 150.47, height: 150.47)
            }
            HStack(spacing: 15) {
                ImageView(width: 150.47, height: 150.47)
                ImageView(width: 150.47, height: 150.47)
            }
            ImageView(width: 317, height: 196)
        }
    }
}

struct FeedGroupView_Previews: PreviewProvider {
    static var previews: some View {
        FeedGroupView()
    }
}
