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
    
   
    @State var appState: AppState = AppState()
    
    var body: some View {
        
        AppVieBuilder(showTabBar: appState.showTabbar,
        tabbarView: {
           TabBarView()
        }, onboardView: {
            WelcomeView()
        }
        )
        .environment(appState)
        
    }
}

//#Preview("AppView - Tabbar") {
//    AppView(showTabBar: AppState(showTabbar: true))
//}
//
//#Preview("AppView - Obnarding") {
//    AppView(showTabBar: AppState(showTabbar: false))
//}
