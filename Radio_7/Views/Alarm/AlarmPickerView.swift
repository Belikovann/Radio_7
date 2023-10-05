//
//  AlarmPickerView.swift
//  Radio_7
//
//  Created by Аня Беликова on 05.10.2023.
//

import SwiftUI

struct AlarmPickerView: View {
    @State private var hours = 16
    @State private var minutes = 32
    
    var body: some View {
        HStack(spacing: 30) {
            VStack {
                Button(action: {decreaseHour()}) { Image(systemName: "chevron.up")
                        .font(.title)
                        .foregroundColor(.black)
                }
                Text("\(hours)")
                    .font(.custom("TT Travels", size: 81.89))
                Button(action: {increaseHour()}) { Image(systemName: "chevron.down")
                        .font(.title)
                        .foregroundColor(.black)
                }
            }
            Image("dots")
            VStack {
                Button(action: {decreaseMinutes()}) { Image(systemName: "chevron.up")
                        .font(.title)
                        .foregroundColor(.black)
                }
                Text("\(minutes)")
                    .font(.custom("TT Travels", size: 81.89))
                Button(action: {increaseMinutes()}) { Image(systemName: "chevron.down")
                        .font(.title)
                        .foregroundColor(.black)
                }
            }
        }
    }
}

struct AlarmPickerView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmPickerView()
    }
}

extension AlarmPickerView {
    
    func increaseHour() {
        if hours < 23 {
            hours += 1
        }
    }
    func decreaseHour() {
        if hours > 1 {
            hours -= 1
        }
    }
    
    func increaseMinutes() {
        if minutes < 59 {
            minutes += 1
        }
    }
    func decreaseMinutes() {
        if minutes > 1 {
            minutes -= 1
        }
    }
}


