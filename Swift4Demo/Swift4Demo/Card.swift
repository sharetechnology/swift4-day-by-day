//
//  Card.swift
//  Swift4Demo
//
//  Created by st on 2018/8/29.
//  Copyright © 2018年 st. All rights reserved.
//

import Foundation
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    static func createCard() -> [Card] {
        let allRank = [Rank.ace, Rank.two, Rank.three, Rank.four, Rank.five,
                       Rank.six, Rank.seven, Rank.eight, Rank.nine, Rank.ten,
                       Rank.jack, Rank.queen, Rank.king]
        let allSuit = [Suit.spades, Suit.hearts, Suit.diamonds, Suit.clubs]
        

        var allCard = [Card]()
        for rank in allRank {
            for suit in allSuit {
                allCard.append(Card(rank: rank, suit: suit))
            }
        }
        return allCard
    }
    
    static func createCardDescription( _ allCard: [Card]) -> String {
        var string = ""
        for card in allCard {
            string += card.simpleDescription()
            string += "\n"
        }
        return string
    }
}

//case ace = 1
//case two, three, four, five, six, seven, eight, nine, ten
//case jack, queen, king
