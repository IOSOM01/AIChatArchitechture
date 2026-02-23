//
//  OnboardingIntroView.swift
//  AIChatArchitechture
//
//  Created by OM BHAGWAN on 24/02/26.
//

import SwiftUI

struct OnboardingIntroView: View {
    var body: some View {
        
        VStack {
          
            Group {
                Text("Make your own ")
                +
                Text("avatars ")
                    .foregroundStyle(.accent)
                    .fontWeight(.semibold)
                +
                Text("and chat with them!\n\nHave ")
                +
                Text("real conversation ")
                    .foregroundStyle(.accent)
                    .fontWeight(.semibold)
                +
                Text("with AI generated responses.")
                
            }
            .baselineOffset(6)
            .frame(maxHeight:.infinity)
            .padding(24)
          
            NavigationLink {
                OnboardingColorView()
            } label: {
                Text("Get Started")
                    .callToActionButton()
            }
        }
        .padding(24)
        .font(.title3)
    }
}

#Preview {
    OnboardingIntroView()
}
