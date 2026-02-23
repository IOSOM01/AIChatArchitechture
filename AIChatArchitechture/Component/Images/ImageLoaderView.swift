//
//  ImageLoaderView.swift
//  AIChatArchitechture
//
//  Created by OM BHAGWAN on 23/02/26.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    
    var imageUrl: String = Constants.randomImage
    var resizingMode: ContentMode = .fill
    
    var body: some View {
        
        Rectangle()
            .opacity(0)
            .overlay {
                WebImage(url: URL(string: imageUrl))
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: resizingMode)
                    .allowsHitTesting(true)
            }
            .clipped()
    }
}

#Preview {
    ImageLoaderView()
}
