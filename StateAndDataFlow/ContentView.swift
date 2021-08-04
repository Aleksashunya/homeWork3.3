//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by 18992227 on 02.08.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimerCounter()
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors:[Color.blue, Color.pink, Color.blue]),
                startPoint: .leading,
                endPoint: .trailing
            )
            .ignoresSafeArea()
            
            VStack {
                Text("Hi, \(user.name)!!!")
                    .font(.largeTitle)
                    .offset(x: 0, y: 100)
                
                Text("\(timer.counter)")
                    .font(.largeTitle)
                    .offset(x: 0, y: 200)
                
                Spacer()
                
                StartButtonView(timer: timer)
                
                Spacer()
                
                LogOutButtonView()
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserManager())
    }
}
