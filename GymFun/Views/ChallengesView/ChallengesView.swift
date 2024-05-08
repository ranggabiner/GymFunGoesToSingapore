//
//  ChallengesView.swift
//  GymFun
//
//  Created by Rangga Biner on 08/05/24.
//

import SwiftUI

struct ChallengesView: View {
//    @State private var isActive: Bool = false
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(hex: 0xF97216)
            ScrollView(showsIndicators: false) {
                VStack {
                    ComingsoonChallengesCard(textChallenges: "Challenges 1")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                    ComingsoonChallengesCard(textChallenges: "Challenges 2")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                    ComingsoonChallengesCard(textChallenges: "Challenges 3")
                }
                .padding(EdgeInsets(top: 175, leading: 0, bottom: 0, trailing: 0))
            }
            TopCardGymbo()
        }
        .background(Color(hex: 0xF97216))
    }
}



#Preview {
    ChallengesView()
}
