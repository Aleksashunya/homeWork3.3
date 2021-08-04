//
//  LoginButton.swift
//  StateAndDataFlow
//
//  Created by Александра Мельникова on 05.08.2021.
//

import SwiftUI

struct LoginButton: View {
    
    @EnvironmentObject var user: UserManager
    @Binding var name: String
    @Binding var buttonIsDisabled: Bool
    
    var body: some View {
        Button(action: registerUser, label: {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("LOG IN")
            }
        })
        .disabled(buttonIsDisabled)
        .frame(width: 200, height: 60)
        .background(Color.white)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20,
                             style: .continuous
            )
            .stroke(Color.white, lineWidth: 4)
        )
        .shadow(color: .black, radius: 10)
    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton(name: .constant(""), buttonIsDisabled: .constant(true))
    }
}

extension LoginButton {
    func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegistered = true
        }
    }
}
