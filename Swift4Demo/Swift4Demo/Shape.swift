//
//  Shape.swift
//  Swift4Demo
//
//  Created by st on 2018/8/27.
//  Copyright © 2018年 st. All rights reserved.
//

import Foundation

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    let number = 6
    func testFunc(_ number:Int) -> Int {
        return number * number
    }
}
