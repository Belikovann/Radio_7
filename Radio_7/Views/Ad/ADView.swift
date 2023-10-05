//
//  ADView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct ADView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                Spacer()
                VStack(spacing: 5) {
                    Text("Имя компании")
                        .bold(true)
                    Text("Реклама - 16+")
                }
                Spacer()
                Image(systemName: "xmark")
            }
            Spacer()
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Ответьте на 1 вопрос и смотрите кино 2 месяца бесплатно!")
//                    .font(.title2)
                    .font(.custom("TT-Travels-Trial-Bold", size: 40))
                Text("Фильмы и сериалы на любой вкус. Музыка и кешбэк баллами в сервисе.")
                    .font(.callout)
            }
            ImageView(width: 252, height: 252)
                .padding()
            
            Spacer()
            Button(action: {}) {
                Text("Смотреть")
                    .foregroundColor(.white)
                    .padding()
            }
            .frame(maxWidth: .infinity)
            .background(.gray)
            .cornerRadius(15)
            
            Spacer()
        }
        .padding()
    }
}

struct ADView_Previews: PreviewProvider {
    static var previews: some View {
        ADView()
    }
}
