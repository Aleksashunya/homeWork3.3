//
//  LogOutButtonView.swift
//  StateAndDataFlow
//
//  Created by Александра Мельникова on 05.08.2021.
//

import SwiftUI

struct LogOutButtonView: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Button(
            action: { user.isRegistered = false },
            label: {
                Text("LogOut")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
        )
        .frame(width: 200, height: 60)
        .background(Color.green)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20,
                             style: .continuous
            )
            .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView()
    }
}
