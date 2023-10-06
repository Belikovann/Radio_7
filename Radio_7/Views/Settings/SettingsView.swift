//
//  SettingsView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var isToggled = false
    @EnvironmentObject var coordinator: Coordinator


    var body: some View {
        NavigationStack {
            Toggle("Автозапуск радио", isOn: $isToggled)
                .padding()
            HStack {
                Text("Будильник")
                Spacer()
                Button(action: {coordinator.navigateTo(screen: .alarm)}) {
                    Text("Выключен")
                        .foregroundColor(.gray)
                }
            }
            .padding()
            Spacer()
            .navigationTitle("Настройки")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        coordinator.navigateTo(screen: .mainPhoto)
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                    }
            )
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
