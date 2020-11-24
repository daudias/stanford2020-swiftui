//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Dias on 11/10/20.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
