//
//  MainView.swift
//  GymFun
//
//  Created by Rangga Biner on 05/05/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color(hex: 0xF97216)
            TabView {
                ExercisesView()
                    .tabItem {
                        Label("Exercises", systemImage: "figure.run")
                    }
                FirstOnboarding()
                    .tabItem {
                        Label("Challenges", systemImage: "figure.run.square.stack")
                    }
            }
        }
        .background(Color(hex: 0xF97216))
    }
}

#Preview {
    MainView()
}
