//
//  ProfileView.swift
//  AIChatArchitechture
//
//  Created by OM BHAGWAN on 22/02/26.
//

import SwiftUI

struct ProfileView: View {
    @State private var showSettingView: Bool = false
    
    var body: some View {
        NavigationStack {
            Text("Profile")
                .navigationTitle("Profile")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        settingButton
                        
                    }
                }
          }
        .sheet(isPresented: $showSettingView) {
            Text("SettinView")
        }
      }
    
    private var settingButton: some View {
        Button {
            onSettingButtonPressed()
        } label: {
            Image(systemName: "gear")
                .font(.headline)
        }
    }
    
    private func onSettingButtonPressed() {
        showSettingView = true
    }
}

#Preview {
    ProfileView()
}
