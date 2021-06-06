//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Peter Pak on 6/5/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card

    private static let emojis = [
        "🚂", "🚀", "🚁", "🚜", "😀", "😃", "😎", "🥰", "😗", "😝", "😍",
        "🤪", "🙂", "🤩", "🗜", "⌨️", "☎️", "🖱", "💽", "📟", "🎛", "💷"
    ]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
        
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
