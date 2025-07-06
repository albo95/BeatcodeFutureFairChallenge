//
//  AllItemsViewModel.swift
//  BeatcodeFutureFairChallenge
//
//  Created by Alberto Bruno on 06/07/25.
//

import Foundation
import SwiftUI

@Observable
class AllItemsViewModel {
    let numberOfItems: Int = 20
    var items: [Item]
    
    init() {
        let titles = (1...numberOfItems).map { "Cell number \($0)" }
        let colors: [Color] = Color.itemPalette
        
        items = titles.map { title in
            Item(title: title, color: colors.randomElement()!)
        }
    }
}
