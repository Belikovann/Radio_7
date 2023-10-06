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
            .foregroundColor(Color(red: 196/256, green: 196/256, blue: 196/256, opacity: 1.0))
            .frame(width: width, height: height)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(width: 317, height: 195)
    }
}
