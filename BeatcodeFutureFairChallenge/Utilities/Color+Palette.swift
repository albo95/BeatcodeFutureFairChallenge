//
//  ColorExtension.swift
//  BeatcodeFutureFairChallenge
//
//  Created by Alberto Bruno on 06/07/25.
//

import SwiftUI

extension Color {
    static let itemPalette: [Color] = [.black, .red, .green, .blue, .orange, .yellow, .mint, .teal, .purple, .pink, .cyan, .white]
    
    static func getRandomColorFromPaletteBlend() -> Color {
        itemPalette.randomElement()!.mix(with: itemPalette.randomElement()!, by: Float64.random(in: 0...1))
    }
}
