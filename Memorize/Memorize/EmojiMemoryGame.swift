//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Dias on 11/15/20.
//

import Foundation
import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String>
    var theme: Theme
    
    init() {
        theme = Theme.themes.randomElement()!
        model = EmojiMemoryGame.createMemoryGame(with: theme)
    }
    
    func newGame() {
        theme = Theme.themes.randomElement()!
        model = EmojiMemoryGame.createMemoryGame(with: theme)
    }
    
    static func createMemoryGame(with theme: Theme) -> MemoryGame<String> {
        let emojis = Array(theme.emojis[1...theme.numberOfCardsToShow])
        return MemoryGame<String>(numberOfPairCards: emojis.count) { pairIndex in emojis[pairIndex] }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    var score: Int {
        model.score
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)    
    }
}
