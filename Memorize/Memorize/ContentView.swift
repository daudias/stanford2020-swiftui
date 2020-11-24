//
//  ContentView.swift
//  Memorize
//
//  Created by Dias on 11/10/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    var body: some View {
        VStack {
            Text(viewModel.theme.name)
            Text("\(viewModel.score)")
            Grid(viewModel.cards) { card in
                CardView(card: card, themeColor: viewModel.theme.color).onTapGesture {
                    viewModel.choose(card: card)
                }
                .padding()
            }
            Button("New Game", action: viewModel.newGame)
        }
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var themeColor: Color
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if card.isFaceUp {
                    RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                    RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeLineWidth)
                    Text(card.content)
                } else {
                    if !card.isMatched {
                        RoundedRectangle(cornerRadius: cornerRadius).fill(themeColor)
                    }
                }
            }
            .font(Font.system(size: fontSize(for: geometry.size)))
        }
    }
    
    // MARK: - Drawing Constants
    let cornerRadius: CGFloat = 10
    let edgeLineWidth: CGFloat = 3
    func fontSize(for size: CGSize) -> CGFloat {
        return min(size.width, size.height) * 0.75
    }
}
