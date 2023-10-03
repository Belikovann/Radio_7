//
//  ImageView.swift
//  Radio_7
//
//  Created by Аня Беликова on 04.10.2023.
//

import SwiftUI

struct ImageView: View {
    var width: Double
    var height: Double
    
    var body: some View {
        Rectangle()
            .fill(Color(.gray))
            .frame(width: width, height: height)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(width: 317, height: 195.58)
    }
}
