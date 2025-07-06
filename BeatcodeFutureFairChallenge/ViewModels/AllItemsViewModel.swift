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
    let numberOfItems: Int = 50
    var items: [Item]
    
    init() {
        let animalTitles = Array(AnimalsData.allAnimalNames.shuffled().prefix(numberOfItems))
        
        items = animalTitles.map { title in
            Item(title: title, color: .getRandomColorFromPaletteBlend())
        }
    }
}
