//
//  LogoAnimation.swift
//  GymFun
//
//  Created by Rangga Biner on 06/05/24.
//

import SwiftUI
struct LogoAnimation: View {
    let countdownElements = [Image("GymFunLogo_1")]
    @State private var countdownIndex = 0
    @State private var timer: Timer?
    
    var body: some View {
        ZStack {
            Image("GymFunLogo_2")
                .resizable()
                .frame(width: 233,height: 233)
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
                .frame(width: 233,height: 233)
        } else {
            return Image("GymFunLogo_2")
                .resizable()
                .frame(width: 233, height: 233)
        }
    }
    
    func startCountdown() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { timer in
            if countdownIndex < countdownElements.count {
                countdownIndex += 1
            } else {
                countdownIndex = 0
            }
        }
    }
}

#if DEBUG
struct LogoAnimation_Previews: PreviewProvider {
    static var previews: some View {
        LogoAnimation()
    }
}
#endif
