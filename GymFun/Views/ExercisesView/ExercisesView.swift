//
//  ExercisesView.swift
//  GymFun
//
//  Created by Rangga Biner on 06/05/24.
//

import SwiftUI

struct ExercisesView: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        ZStack {
            Color(hex: 0xF97216)
            VStack {
                Button(action: {
                    isActive = true
                }) {
                    BicepCurlCard()
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                Button(action: {
                    isActive = true
                    print(isActive)
                }) {
                    SquatCard()
                }
                Button(action: {
                    isActive = true
                }) {
                    JumpingJackCard()
                }
            }
            if isActive {
                SplashScreen()
            }
        }
        .background(Color(hex: 0xF97216))
       
    }
}


#Preview {
    ExercisesView()
}
