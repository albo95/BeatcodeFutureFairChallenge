//
//  ItemDetailView.swift
//  BeatcodeFutureFairChallenge
//
//  Created by Alberto Bruno on 06/07/25.
//

import SwiftUI

struct ItemDetailView: View {
    @Bindable var item: Item
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(item.color.gradient.opacity(0.4))
                .ignoresSafeArea()
            
            Button {
                withAnimation {
                    item.isFavourite.toggle()
                }
            } label: {
                VStack(spacing: 16) {
                    IsFavouriteStarView(isFavourite: item.isFavourite, size: 200, weight: item.isFavourite ? .light : .ultraLight)
                    addRemoveFavouriteTextView
                }
            }
            .accessibilityLabel(item.isFavourite ? "Remove from favourites" : "Add to favourites")
            .accessibilityHint("Double tap to toggle favourite status")
            .accessibilityAddTraits(.isButton)
            .navigationTitle(item.title)
        }
    }
    
    private var addRemoveFavouriteTextView: some View {
        Text(item.isFavourite ? "Remove from Favourites" : "Add to Favourites")
            .padding()
            .background(item.isFavourite ? Color.yellow.opacity(0.4) : Color.gray.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.black, lineWidth: item.isFavourite ? 5 : 3)
            )
    }
}


#Preview {
    ItemDetailView(item: Item(title: "Cell number X", color: .black, isFavourite: false))
}
