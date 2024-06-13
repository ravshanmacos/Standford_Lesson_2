//
//  CardView.swift
//  Standford_Lesson_2
//
//  Created by Ravshan Winter on 10/06/24.
//

import SwiftUI

struct CardView: View {
    typealias Card = MemoryGame<String>.Card
    
    let card: Card
    
    init(_ card: MemoryGame<String>.Card) {
        self.card = card
    }
    
    var body: some View {
        Pie(endAngle: .degrees(240))
            .opacity(Constants.Pie.opacity)
            .overlay {
                Text(card.content)
                    .font(.system(size: Constants.FontSize.largest))
                    .minimumScaleFactor(Constants.FontSize.scaleFactor)
                    .multilineTextAlignment(.center)
                    .aspectRatio(1, contentMode: .fit)
                    .padding(Constants.Pie.inset)
            }
            .padding(Constants.inset)
            .cardify(isFaceUp: card.isFaceUp)
            .opacity(card.isFaceUp || !card.isMatched ? 1 : 0)
    }
    
    private struct Constants {
        static let inset: CGFloat = 5
        struct FontSize {
            static let largest: CGFloat = 200
            static let smallest: CGFloat = 10
            static let scaleFactor: CGFloat = smallest / largest
        }
        
        struct Pie {
            static let opacity: CGFloat = 0.5
            static let inset: CGFloat = 5
        }
    }
}

/*
 #Preview {
     VStack {
         HStack{
             CardView(CardView.Card(isFaceUp: true, content: "X", id: "1a"))
             CardView(CardView.Card(isFaceUp: false, content: "🦹🏻‍♀️", id: "2a"))
         }
         
         HStack{
             CardView(CardView.Card(isFaceUp: true, isMatched: true, content: "This is a very long string va i hope it fits", id: "1a"))
             CardView(CardView.Card(isFaceUp: true, isMatched: true, content: "X", id: "2a"))
         }
     }
     .foregroundColor(.green)
     .padding()
 }
 */
