//
//  WelcomeView.swift
//  AIChatArchitechture
//
//  Created by OM BHAGWAN on 22/02/26.
//

import SwiftUI

struct WelcomeView: View {
    
    @State var imageName = Constants.randomImage
    
    var body: some View {
        NavigationStack {
            
            ImageLoaderView()
                .ignoresSafeArea()
          
            VStack(spacing: 8) {
                
                 titleSection
                .padding(.top, 24)
                
                 ctaButton
                .padding(16)
            
                policyLink
                
            }
            
        }
    }
    
    private var titleSection: some View {
        VStack(spacing: 8) {
            Text("AI Chat 👍")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Youtube & SwiftUIThinking")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
    
    private var ctaButton: some View {
        VStack(spacing: 8) {
            NavigationLink {
                OnboardingIntroView()
            } label: {
                Text("Get started")
                    .callToActionButton()
            }
            
            Text("Already have an account? Sign in")
                .underline()
                .font(.body)
                .padding(8)
                .tapableBackground()
                .onTapGesture {
                    
                }
        }
    }
    
    private var policyLink: some View {
        HStack(spacing: 8) {
            Link(destination: URL(string: Constants.privacyPolicyURL)!) {
                Text("Term of Services")
            }
            
            Circle()
                .fill(.accent)
                .frame(width: 4, height: 4)
            
            Link(destination: URL(string: Constants.privacyPolicyURL)!) {
                Text("Privacy Policy")
            }
        }
    }
}


#Preview {
    WelcomeView()
}
