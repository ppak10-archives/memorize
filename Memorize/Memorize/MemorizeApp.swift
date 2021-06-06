//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Peter Pak on 6/5/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
