//
//  Standford_Lesson_2App.swift
//  Standford_Lesson_2
//
//  Created by Ravshan Winter on 02/05/24.
//

import SwiftUI

@main
struct Standford_Lesson_2App: App {
    @StateObject var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
