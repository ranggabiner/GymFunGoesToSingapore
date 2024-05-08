//
//  MainView.swift
//  GymFun
//
//  Created by Rangga Biner on 05/05/24.
//

import SwiftUI

struct MainView: View {
    init() {
        // Change the appearance of the tab bar
        UITabBar.appearance().barTintColor = UIColor(Color(.white))
    }
    
    var body: some View {
        ZStack {
            Color(hex: 0xF97216)
            TabView {
                ExercisesView()
                    .tabItem {
                        Label("Exercises", systemImage: "figure.run")
                    }.accentColor(Color(.white))
                    
                ChallengesView()
                    .tabItem {
                        Label("Challenges", systemImage: "figure.run.square.stack")
                    }.accentColor(Color(.white))
            }
        }
        .background(Color(hex: 0xF97216))
    }
}

// Preview code remains unchanged
#Preview {
    MainView()
}
