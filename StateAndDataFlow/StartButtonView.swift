//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Александра Мельникова on 05.08.2021.
//

import SwiftUI

struct StartButtonView: View {
    @ObservedObject var timer: TimerCounter
    
    var body: some View {
        Button(
            action: { self.timer.startTimer() },
            label: {
                Text("\(timer.buttonTitle)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
        )
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20,
                             style: .continuous
            )
            .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(timer: TimerCounter())
    }
}
