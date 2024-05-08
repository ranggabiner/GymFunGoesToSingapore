//
//  ExercisesView.swift
//  GymFun
//
//  Created by Rangga Biner on 06/05/24.
//

import SwiftUI

struct ExercisesView: View {
//    @State private var isActive: Bool = false
    @State private var isBicep = false
    @State private var isJumpingJack = false
    @State private var isSquat = false
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(hex: 0xF97216)
            ScrollView(showsIndicators: false) {
                VStack {
                    Button(action: {
                        isBicep = true
                    }) {
                        BicepCurlCard()
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                    Button(action: {
                        isSquat = true
                    }) {
                        SquatCard()
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                    Button(action: {
                        isJumpingJack = true
                    }) {
                        JumpingJackCard()
                    }
                }
                .padding(EdgeInsets(top: 175, leading: 0, bottom: 0, trailing: 0))
            }
            if isBicep {
                BicepCurlCameraWithPosesAndOverlaysView()
            } else if isSquat {
                SquatCameraWithPosesAndOverlaysView()
            } else if isJumpingJack {
                JumpingJackCameraWithPosesAndOverlaysView()
            }
            TopCardGymbo()
           
        }
        .background(Color(hex: 0xF97216))
    }
}


#Preview {
    ExercisesView()
}
