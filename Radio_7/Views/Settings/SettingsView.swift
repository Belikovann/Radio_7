//
//  SettingsView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var isToggled = false

       var body: some View {
           VStack {
               HStack {
                   Text("Настройки")
                       .bold(true)
                       .font(.title)
                   Spacer()
                   Image(systemName: "xmark")
               }
               VStack {
                   Toggle("Автозапуск радио", isOn: $isToggled)
                   HStack {
                       Text("Будильник")
                       Spacer()
                       Text(isToggled ? "Включен" : "Выключен")
                           .foregroundColor(.gray)
                   }
               }
           }
           .padding()
       }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
