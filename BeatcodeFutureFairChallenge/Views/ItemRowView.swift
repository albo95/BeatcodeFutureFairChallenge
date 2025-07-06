//
//  ItemRowView.swift
//  BeatcodeFutureFairChallenge
//
//  Created by Alberto Bruno on 06/07/25.
//

import SwiftUI

struct ItemRowView: View {
    @Bindable var item: Item
    
    var body: some View {
        HStack {
            Text(item.title)
                .foregroundStyle(.primary)
                .accessibilityHidden(true)
            
            Spacer()
            
            isFavouriteButtonView
            
            navigationArrowView
        }
        .padding()
        .background(
            backgroundView
        )
        .accessibilityLabel("\(item.title), \(item.isFavourite ? "Favourite" : "Not favourite")")
        .accessibilityHint("Double tap to navigate to item details")
        .accessibilityAddTraits(.isButton)
    }
    
    
    private var isFavouriteButtonView: some View {
        Button {
            withAnimation {
                item.isFavourite.toggle()
            }
        } label: {
            IsFavouriteStarView(isFavourite: item.isFavourite, size: item.isFavourite ? 30 : 24, weight: item.isFavourite ? .regular : .light)
        }
    }
    
    private var navigationArrowView: some View {
        Image(systemName: "chevron.right")
            .foregroundStyle(.secondary)
            .accessibilityHidden(true)
    }
    
    private var backgroundView: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(item.color.gradient.opacity(0.4))
            .overlay(
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(item.isFavourite ? .yellow : .primary.opacity(0.7), lineWidth: item.isFavourite ? 5 : 3)
                })
    }
}

#Preview {
    ItemRowView(item: Item(title: "Cell number X", color: .black, isFavourite: false))
}
