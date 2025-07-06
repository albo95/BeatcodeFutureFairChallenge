//
//  AllItemsView.swift
//  BeatcodeFutureFairChallenge
//
//  Created by Alberto Bruno on 06/07/25.
//

import SwiftUI

struct AllItemsView: View {
    @State var viewModel = AllItemsViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(viewModel.items) { item in
                        NavigationLink(value: item) {
                            ItemRowView(item: item)
                        }
                    }
                }.padding()
            }
            .navigationTitle("Items")
            .navigationDestination(for: Item.self) { item in
                ItemDetailView(item: item)
            }
        }
    }
}

#Preview {
    AllItemsView()
}
