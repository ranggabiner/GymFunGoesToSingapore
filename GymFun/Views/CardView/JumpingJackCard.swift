//
//  JumpingJackCard.swift
//  GymFun
//
//  Created by Rangga Biner on 06/05/24.
//

import SwiftUI

struct JumpingJackCard: View {
    
    var body: some View {
        VStack {
            JumpingJackAnimation()
            Text("Jumping Jack")
                .fontWeight(.semibold)
                .font(.system(size: 17))
                .foregroundStyle(Color(hex: 0xF97216))
        }
        .frame(width: 179, height: 222)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 4, x: 0, y: 4)
    }
}

struct JumpingJackCard_Previews: PreviewProvider {
    static var previews: some View {
        JumpingJackCard()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
