//
//  View+EXT.swift
//  AIChatArchitechture
//
//  Created by OM BHAGWAN on 22/02/26.
//
import SwiftUI
extension View {
    func callToActionButton() -> some View {
        self
            .font(.headline)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(Color.accentColor)
            .cornerRadius(16)
    }
    
    func tapableBackground() -> some View {
        background(Color.black.opacity(0.001))
    }
}
