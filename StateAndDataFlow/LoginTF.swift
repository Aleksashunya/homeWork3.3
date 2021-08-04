//
//  LoginTF.swift
//  StateAndDataFlow
//
//  Created by Александра Мельникова on 05.08.2021.
//

import SwiftUI

struct LoginTF: View {
    @Binding var name: String
    @Binding var labelColor: Color
    @Binding var buttonIsDisabled: Bool
    
    var body: some View {
        TextField("Enter your name", text: $name)
            .multilineTextAlignment(.center)
            .onChange(of: name, perform: { value in
                if name.count >= 3 {
                    labelColor = Color.green
                    buttonIsDisabled = false
                } else {
                    labelColor = Color.red
                    buttonIsDisabled = true
                }
            }
            )
            .frame(height: 40)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding()
    }
}

struct LoginTF_Previews: PreviewProvider {
    static var previews: some View {
        LoginTF(name: .constant(""), labelColor: .constant(.red), buttonIsDisabled: .constant(true))
    }
}
