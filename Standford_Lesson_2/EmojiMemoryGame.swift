//
//  EmojiMemoryGame.swift
//  Standford_Lesson_2
//
//  Created by Ravshan Winter on 25/05/24.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["👻", "🎃", "🕷️", "😈","💰","🙂", "👋", "🫁", "🦹🏻‍♀️", "🧟‍♀️"]
    
    private static func createMemoryGame()-> MemoryGame<String>{
        MemoryGame(numberOfPairsOfCards: 2) { pairIndex in
            emojis.indices.contains(pairIndex) ? emojis[pairIndex] : "⁉️"
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    var color: Color {
        .orange
    }
    
    //MARK: Intents
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
}
