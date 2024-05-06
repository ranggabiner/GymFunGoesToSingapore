//
//  ContentView.swift
//  GymFun
//
//  Created by Rangga Biner on 05/05/24.
//

import SwiftUI
 
struct ContentView: View {
    
    @State var showSplash: Bool = false
    
    var body: some View {
        ZStack {
            if showSplash {
                FirstOnboarding()
                    .transition(.identity)
            } else {
                SplashScreen()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                          withAnimation {
                              self.showSplash = true
                          }
                      }
        }
    }
}

#Preview {
    ContentView()
}
