//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by 18992227 on 02.08.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    
    @State private var name = ""
    @State private var buttonIsDisabled = true
    @State private var labelColor = Color.red
    
    var body: some View {
        
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.pink, Color.blue, Color.pink]),
                startPoint: .leading,
                endPoint: .trailing
            )
            .ignoresSafeArea()
            
            VStack {
                Text("Please, Log In")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(Color.white)
                
                Spacer()
                
                LoginTF(name: $name,
                        labelColor: $labelColor,
                        buttonIsDisabled: $buttonIsDisabled
                )
                
                Text("\(name.count) symbols")
                    .foregroundColor(labelColor)
                    .font(.headline)
                
                Spacer()
                
                LoginButton(name: $name,
                            buttonIsDisabled: $buttonIsDisabled
                )
                
                Spacer()
            }.padding()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView().environmentObject(UserManager())
    }
}
