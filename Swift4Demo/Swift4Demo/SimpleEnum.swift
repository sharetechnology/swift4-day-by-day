//
//  SimpleEnum.swift
//  Swift4Demo
//
//  Created by st on 2018/8/29.
//  Copyright © 2018年 st. All rights reserved.
//


extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}

extension Double{
    var absoluteValue : Double {
        get {
            if self < 0 {
                return -self
            }else{
                return self
            }
        }
    }
}

enum SimpleEnum:Int {
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
}




//extension SimpleEnum:ExampleProtocol {
////    var simpleDescription: String {
////        <#code#>
////    }
//    
////    var simpleDescription: String = "A simple structure"
//    mutating func adjust() {
////        simpleDescription += " (adjusted)"
//    }
//}
