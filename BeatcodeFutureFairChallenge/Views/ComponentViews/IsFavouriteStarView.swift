//
//  IsFavouriteStarView.swift
//  BeatcodeFutureFairChallenge
//
//  Created by Alberto Bruno on 06/07/25.
//

import SwiftUI

struct IsFavouriteStarView: View {
    var isFavourite: Bool
    var size: CGFloat = 30
    var weight: Font.Weight = .regular
    
    var body: some View {
        ZStack {
            Image(systemName: "star.fill")
                .foregroundColor(isFavourite ? .yellow : .white)
                .font(.system(size: size, weight: weight))
            
            Image(systemName: "star")
                .foregroundColor(.black)
                .font(.system(size: size, weight: weight))
        }
        .accessibilityHidden(true)
    }
}

#Preview {
    IsFavouriteStarView(isFavourite: false, size: 30)
}
