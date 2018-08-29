//
//  Suit.swift
//  Swift4Demo
//
//  Created by st on 2018/8/29.
//  Copyright © 2018年 st. All rights reserved.
//

import Foundation
import UIKit

enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func colorFunc(_ suit: Suit) -> UIColor {
        if suit == .spades || suit == .clubs {
            return .black
        }else{
            return .red
        }
    }
}
