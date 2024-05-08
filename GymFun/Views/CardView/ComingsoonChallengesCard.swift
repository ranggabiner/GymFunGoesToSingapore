//
//  ComingsoonChallengesCard.swift
//  GymFun
//
//  Created by Rangga Biner on 08/05/24.
//

import SwiftUI

struct ComingsoonChallengesCard: View {
    var textChallenges: String
    
    var body: some View {
        VStack {
            Spacer()
            Text("COMING SOON")
                .fontWeight(.black)
                .font(.system(size: 17))
                .foregroundStyle(Color(hex: 0xF97216))
            Spacer()
            Text(textChallenges)
                .fontWeight(.medium)
                .font(.system(size: 17))
                .foregroundStyle(Color(hex: 0xF97216))
                .padding(.bottom)
        }
        .frame(width: 179, height: 222)
        .background(Color(hex: 0xD9D9D9))
        .cornerRadius(12)
        .shadow(radius: 4, x: 0, y: 4)
    }
}

#Preview {
    ComingsoonChallengesCard(textChallenges: "Challenges 1")
}
