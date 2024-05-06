//
//  SplashScreen.swift
//  GymFun
//
//  Created by Rangga Biner on 05/05/24.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack {
            Color(hex: 0xF97216)
                .ignoresSafeArea()
            VStack {
                Spacer()
                LogoAnimation()
                Spacer()
                Text("GYM FUN")
                    .font(.custom("Knewave-Regular", size: 36))
                    .foregroundStyle(Color(.white))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
            }
        }
    }
}

#Preview {
    SplashScreen()
}

