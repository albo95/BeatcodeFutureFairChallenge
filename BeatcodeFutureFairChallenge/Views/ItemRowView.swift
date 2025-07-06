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
            
            Spacer()
            
            Button {
                item.isFavourite.toggle()
            } label: {
                IsFavouriteStarView(isFavourite: item.isFavourite)
            }
            
            Image(systemName: "chevron.right")
                .foregroundStyle(.secondary)
                .accessibilityHidden(true)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(item.color.gradient.opacity(0.5))
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.primary.opacity(0.7), lineWidth: 2)
                )
        )
        .accessibilityHint("Double tap to navigate to item details")
        .accessibilityAddTraits(.isButton)
    }
}

#Preview {
    ItemRowView(item: Item(title: "Cell number X", color: .black, isFavourite: false))
}
