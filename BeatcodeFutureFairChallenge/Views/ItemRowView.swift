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
            
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(item.color.gradient.opacity(0.5))
                .overlay(RoundedRectangle(cornerRadius: 12)
                    .stroke(.primary, lineWidth: 2.5))
        )
    }
}

#Preview {
    ItemRowView(item: Item(title: "Cell number X", color: .black, isFavourite: false))
}
