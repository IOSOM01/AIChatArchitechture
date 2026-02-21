//
//  TabBarView.swift
//  AIChatArchitechture
//
//  Created by OM BHAGWAN on 22/02/26.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
           ExploreView()
            .tabItem {
                Label("Explore", systemImage: "eyes")
            }
            
           ChatView()
            .tabItem {
                Label("Chats", systemImage: "bubble.left.and.bubble.right.fill")
            }
            
            ProfileView()
            .tabItem {
                Label("Profile", systemImage: "person.fill")
            }
                
        }
    }
}

#Preview {
    TabBarView()
}
