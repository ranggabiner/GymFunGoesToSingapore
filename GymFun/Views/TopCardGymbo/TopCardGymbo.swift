//
//  TopCardGymbo.swift
//  GymFun
//
//  Created by Rangga Biner on 08/05/24.
//

import SwiftUI

struct TopCardGymbo: View {
    var body: some View {
        VStack {
            HStack {
                BicepCurlAnimation(thisWidth: 108, thisHeight: 108)
                Text("Bicep Curl")
                    .fontWeight(.semibold)
                    .font(.system(size: 17))
                    .foregroundStyle(Color(hex: 0xF97216))
            }
            .frame(width: 361, height: 153)
            .background(Color.white)
            .cornerRadius(12)
            .shadow(radius: 4, x: 0, y: 4)

            }
        }
}

#Preview {
    TopCardGymbo()
}
