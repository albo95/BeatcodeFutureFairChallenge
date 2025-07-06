//
//  Item.swift
//  BeatcodeFutureFairChallenge
//
//  Created by Alberto Bruno on 06/07/25.
//

import Foundation
import SwiftUI

@Observable
class Item: Identifiable, Hashable {
    static func == (lhs: Item, rhs: Item) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    let id: UUID = UUID()
    let title: String
    let color: Color
    var isFavourite: Bool
    
    init(title: String, color: Color, isFavourite: Bool = false) {
        self.title = title
        self.isFavourite = isFavourite
        self.color = color
    }
}
