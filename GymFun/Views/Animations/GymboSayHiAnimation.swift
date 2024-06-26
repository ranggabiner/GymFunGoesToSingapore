//
//  GymboSayHiAnimation.swift
//  GymFun
//
//  Created by Rangga Biner on 06/05/24.
//

import SwiftUI
struct GymboSayHiAnimation: View {
    let countdownElements = [Image("GymboSayHi_1")]
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
                .frame(width: 393, height: 393)
        } else {
            return Image("GymboSayHi_2")
                .resizable()
                .frame(width: 393, height: 393)
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
struct GymboSayHiAnimation_Previews: PreviewProvider {
    static var previews: some View {
        GymboSayHiAnimation()
    }
}
#endif
