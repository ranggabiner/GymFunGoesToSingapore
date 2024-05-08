//
//  FirstOnboarding.swift
//  GymFun
//
//  Created by Rangga Biner on 05/05/24.
//

import SwiftUI

struct FirstOnboarding: View {
    @State private var isTap: Bool = false

    var body: some View {
        ZStack {
            Color(hex: 0xF97216)
            VStack {
                Spacer()
                Text("Hi, I'm Gymbo!")
                    .fontWeight(.bold)
                    .foregroundStyle(Color(.white))
                    .font(.system(size: 38.58))
                Text("Get Fun, Get Strong, Get Gymbo")
                    .fontWeight(.regular)
                    .foregroundStyle(Color(.white))
                    .font(.system(size: 15.43))
                Spacer()
                GymboSayHiAnimation()
                Spacer()
                Button(action: {
                    isTap = true
                }) {
                    Text("Start your journey")
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: 0xF97216))
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.white)
                                .shadow(color: .black.opacity(50), radius: 4, x: 0, y: 4)
                    )
                    .padding(50)
                }
            }
            if isTap {
                MainView()
            }
        }
        .background(Color(hex: 0xF97216))
        
    }
}

#Preview {
    FirstOnboarding()
}
