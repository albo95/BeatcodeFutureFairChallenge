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
            
            Spacer()
            
            Button {
                item.isFavourite.toggle()
            } label: {
                isFavouriteView
            }
        }
        .padding()
        .background(item.color.gradient.opacity(0.7))
    }
    
    private var isFavouriteView: some View {
        ZStack {
            Image(systemName: "star.fill")
                .foregroundColor(item.isFavourite ? .yellow : .white)
            
            Image(systemName: "star")
                .foregroundColor(.black)
        }
    }
}

#Preview {
    ItemRowView(item: Item(title: "Cell number X", color: .yellow, isFavourite: false))
}
