//
//  SquatGuidance.swift
//  GymFun
//
//  Created by Rangga Biner on 08/05/24.
//

import SwiftUI

struct SquatGuidance: View {
    var body: some View {
        VStack {
            SquatAnimation(thisWidth: 370, thisHeight: 370)
                .opacity(0.3)
            Text("Squat")
                .fontWeight(.semibold)
                .foregroundStyle(Color(hex: 0xF97216))
                .font(.system(size: 38.58))
                .opacity(0.3)

        }
         
    }
}

#Preview {
    SquatGuidance()
}
