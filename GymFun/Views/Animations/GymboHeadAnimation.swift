//
//  GymboHeadAnimation.swift
//  GymFun
//
//  Created by Rangga Biner on 08/05/24.
//

import SwiftUI

struct GymboHeadAnimation: View {
    let countdownElements = [Image("GymboHead_1")]
    @State private var countdownIndex = 0
    @State private var timer: Timer?
    var thisWidth: CGFloat
    var thisHeight: CGFloat
    
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
                .frame(width: thisWidth, height: thisHeight)
        } else {
            return Image("GymboHead_2")
                .resizable()
                .frame(width: thisWidth, height: thisHeight)
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
struct GymboHeadAnimation_Previews: PreviewProvider {
    static var previews: some View {
        GymboHeadAnimation(thisWidth: 108, thisHeight: 108)
    }
}
#endif
