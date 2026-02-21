//
//  AppView.swift
//  AIChatArchitechture
//
//  Created by OM BHAGWAN on 21/02/26.
//

import SwiftUI

// tabbar -> Signed In
//  onboarding -> signed out

struct AppView: View {
    
    @AppStorage("showTabbarView") var showTabBar: Bool = false
    
    var body: some View {
        
        AppVieBuilder(showTabBar: showTabBar,
        tabbarView: {
           TabBarView()
        }, onboardView: {
            WelcomeView()
        })
    }
}

#Preview("AppView - Tabbar") {
    AppView(showTabBar: true)
}

#Preview("AppView - Obnarding") {
    AppView(showTabBar: false)
}
