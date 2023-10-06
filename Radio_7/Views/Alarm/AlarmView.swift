//
//  AlarmView.swift
//  Radio_7
//
//  Created by Аня Беликова on 03.10.2023.
//

import SwiftUI

struct AlarmView: View {
    @State private var isToggled = false
    @State private var repeatAlarm = false
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 20) {
                AlarmPickerView()
                    .padding()
                Toggle("Включен", isOn: $isToggled)
                HStack {
                    Text("Повтор")
                    Spacer()
                    Button(action: repeatSwitch) {
                        Text(repeatAlarm ? "Включен" : "Никогда")
                            .foregroundColor(.gray)
                    }
                }
                HStack {
                    Text("Проснуться с")
                    Spacer()
                    Button(action: {coordinator.navigateTo(screen: .episode)}) {
                        Text("Радио 7 Москва")
                            .foregroundColor(.gray)
                    }
                }
            }
            Spacer()
            .navigationTitle("БУДИЛЬНИК")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        coordinator.navigateTo(screen: .settings)
                    }) {
                        Image("arrow.left")
                            .foregroundColor(.black)
                    }
            )
        }
        .padding()
    }
}

struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView()
    }
}


extension AlarmView {
    
    func repeatSwitch() {
        withAnimation {
            repeatAlarm.toggle()
        }
    }
}
