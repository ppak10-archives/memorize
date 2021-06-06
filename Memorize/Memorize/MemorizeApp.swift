//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Peter Pak on 6/5/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
