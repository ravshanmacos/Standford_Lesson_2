//
//  EmojiMemoryGame.swift
//  Standford_Lesson_2
//
//  Created by Ravshan Winter on 25/05/24.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["👻", "🎃", "🕷️", "😈","💰","🙂", "👋", "🫁", "🦹🏻‍♀️", "🧟‍♀️"]
    private static func createMemoryGame()-> MemoryGame<String>{
        MemoryGame(numberOfPairsOfCards: 11) { pairIndex in
            emojis.indices.contains(pairIndex) ? emojis[pairIndex] : "⁉️"
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: Intents
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}
