//
//  SettingView.swift
//  AIChatArchitechture
//
//  Created by OM BHAGWAN on 22/02/26.
//

import SwiftUI

struct SettingView: View {

    @Environment(\.dismiss) private var dismiss
    @Environment(AppState.self) private var appState
    
    var body: some View {
        
        NavigationStack {
            List {
                Button {
                    onSignOutPressed()
                } label: {
                    Text("Sign Out")
                }

            }
            .navigationTitle(Text("Settings"))
        }
    }
    
    func onSignOutPressed() {
        
        dismiss()
        
        Task {
            try? await Task.sleep(for: .seconds(1))
            appState.updateViewState(showTabBarView: false)
        }
    }
}

#Preview {
    SettingView()
}
