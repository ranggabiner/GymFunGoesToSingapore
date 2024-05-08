//
//  BicepCurlGuidance.swift
//  GymFun
//
//  Created by Rangga Biner on 08/05/24.
//

import SwiftUI

struct BicepCurlGuidance: View {
    var body: some View {
        VStack {
            BicepCurlAnimation(thisWidth: 370, thisHeight: 370)
                .opacity(0.3)
            Text("Bicep Curl")
                .fontWeight(.semibold)
                .foregroundStyle(Color(hex: 0xF97216))
                .font(.system(size: 38.58))
                .opacity(0.3)

        }
         
    }
}

#Preview {
    BicepCurlGuidance()
}
