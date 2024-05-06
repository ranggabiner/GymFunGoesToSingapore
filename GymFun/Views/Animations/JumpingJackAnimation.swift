//
//  JumpingJackAnimation.swift
//  GymFun
//
//  Created by Rangga Biner on 06/05/24.
//

import SwiftUI

import SwiftUI

struct JumpingJackAnimation: View {
    let countdownElements = [Image("GymboJumpingJack_1")]
    @State private var countdownIndex = 0
    @State private var timer: Timer?
    
    var body: some View {
        ZStack {
            VStack {
                countdownImage
                    .onAppear {
                        startCountdown()
                    }
            }
        }
    }
    
    var countdownImage: some View {
        if countdownIndex < countdownElements.count {
            return countdownElements[countdownIndex]
                .resizable()
                .frame(width: 108, height: 108)
        } else {
            return Image("GymboJumpingJack_2")
                .resizable()
                .frame(width: 108, height: 108)
        }
    }
    
    func startCountdown() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
            if countdownIndex < countdownElements.count {
                countdownIndex += 1
            } else {
                countdownIndex = 0
            }
        }
    }
}

#if DEBUG
struct JumpingJackAnimation_Previews: PreviewProvider {
    static var previews: some View {
        JumpingJackAnimation()
    }
}
#endif