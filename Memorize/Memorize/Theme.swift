//
//  Theme.swift
//  Memorize
//
//  Created by Dias on 11/19/20.
//

import Foundation
import SwiftUI

struct Theme {
    var name: String
    var emojis: [String]
    var numberOfCardsToShow: Int
    var color: Color
    
    init(name: String, emojis: [String], numberOfCardsToShow: Int, color: Color) {
        self.name = name
        self.emojis = emojis
        self.numberOfCardsToShow = numberOfCardsToShow
        self.color = color
    }
    
    init(name: String, emojis: [String], color: Color) {
        let randomNumberOfCardsToShow = Int.random(in: 1..<emojis.count)
        self.init(name: name, emojis: emojis, numberOfCardsToShow: randomNumberOfCardsToShow, color: color)
    }
    
    static let smiles = Theme(name: "Smiles", emojis: ["😃", "😄", "😆", "😅", "😂", "🤣"], color: Color.yellow)
    static let animals = Theme(name: "Animals", emojis: ["🐣", "🐥", "🦕", "🐔", "🐖", "🐏"], color: Color.green)
    static let fruits = Theme(name: "Fruits", emojis: ["🍏", "🍎", "🍐", "🍊", "🍋", "🍌"], color: Color.red)
    static let transports = Theme(name: "Transports", emojis: ["🚗", "🚒", "🛴", "🚘", "🚝", "🚉"], color: Color.blue)
    static let fingers = Theme(name: "Fingers", emojis: ["🤲", "✊", "🤏", "🖐", "🖖", "👌"], color: Color.yellow)
    static let flags = Theme(name: "Flags", emojis: ["🇦🇽", "🇦🇬", "🇧🇭", "🇧🇬", "🇨🇺", "🇰🇿"], color: Color.pink)
    
    static let themes = [smiles, animals, fruits, transports, fingers, flags]
}
