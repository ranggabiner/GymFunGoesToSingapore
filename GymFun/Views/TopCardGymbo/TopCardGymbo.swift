//
//  TopCardGymbo.swift
//  GymFun
//
//  Created by Rangga Biner on 08/05/24.
//

import SwiftUI

struct TopCardGymbo: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    GymboHeadAnimation(thisWidth: 67, thisHeight: 67)
                        .shadow(radius: 4, x: 0, y: 4)
                    VStack {
                        Text("Hi, I'm Gymbo!")
                            .fontWeight(.bold)
                            .font(.system(size: 26))
                            .foregroundStyle(Color(.white))
                        Text("Get Fun, Get Strong, Get Gymbo")
                            .fontWeight(.regular)
                            .font(.system(size: 11))
                            .foregroundStyle(Color(.white))

                    }
                     
                }
                .frame(width: 361, height: 153)
                .background(Color(hex: 0xF97216))
                .cornerRadius(12)
                .shadow(radius: 4, x: 0, y: 4)
                .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.white, lineWidth: 2.32)
                )
                }
        }

        }
}

#Preview {
    TopCardGymbo()
}
