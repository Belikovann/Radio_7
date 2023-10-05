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
    
    var body: some View {
        
        VStack(spacing: 20) {
            HStack {
                Text("БУДИЛЬНИК")
                    .font(.title)
                Spacer()
                Image("arrow.left")
            }
            AlarmPickerView()
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
                Text("Радио 7 Москва")
                    .foregroundColor(.gray)
            }
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
