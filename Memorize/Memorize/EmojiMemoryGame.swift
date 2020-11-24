//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Dias on 11/15/20.
//

import Foundation
import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
   
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊"]
        return MemoryGame<String>(numberOfPairCards: emojis.count) { pairIndex in emojis[pairIndex] }
    }

    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)    
    }
}
