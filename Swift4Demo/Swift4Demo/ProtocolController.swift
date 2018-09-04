//
//  ProtocolController.swift
//  Swift4Demo
//
//  Created by st on 2018/9/1.
//  Copyright © 2018年 st. All rights reserved.
//

import UIKit

class ProtocolController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let john = Person(fullName: "John Appleseed")
        // john.fullName 是 "John Appleseed"
        print(john.fullName)
        
        var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
        // ncc1701.fullName 是 "USS Enterprise"
        print(ncc1701.fullName)
        
        class LinearCongruentialGenerator: RandomNumberGenerator {
            var lastRandom = 42.0
            let m = 139968.0
            let a = 3877.0
            let c = 29573.0
            func random() -> Double {
                lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy:m))
                return lastRandom / m
            }
        }
        let generator = LinearCongruentialGenerator()
        print("Here's a random number: \(generator.random())")
        // 打印 "Here's a random number: 0.3746499199817101"
        print("And another one: \(generator.random())")
        // 打印 "And another one: 0.729023776863283"
        
    }
}

protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}

protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}

protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
}

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}

//protocol SomeProtocol {
//    static func someTypeMethod()
//}

protocol RandomNumberGenerator {
    func random() -> Double
}


class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}



