//
//  AppVieBuilder.swift
//  AIChatArchitechture
//
//  Created by OM BHAGWAN on 21/02/26.
//

import SwiftUI
struct AppVieBuilder<TabBarView: View, OnboardingView: View>: View {
    
    var showTabBar: Bool = false
    @ViewBuilder var tabbarView: TabBarView
    @ViewBuilder var onboardView: OnboardingView
    
    var body: some View {
        ZStack {
            if showTabBar {
                tabbarView
                .transition(.move(edge: .trailing))
            }
            else {
                onboardView
                .transition(.move(edge: .leading))
            }
        }
        .animation(.smooth, value: showTabBar)
    }
}

private struct PreviewView: View {
    @State private var showTabBar: Bool = false
    
    var body: some View {
        
        AppVieBuilder(showTabBar: showTabBar,
        tabbarView: {
            ZStack {
                Color.red.ignoresSafeArea()
                Text("Tabbar")
            }
        }, onboardView: {
            ZStack {
                Color.blue.ignoresSafeArea()
                Text("Onboarding")
            }
        })
    }
}

#Preview {
    PreviewView()
}
