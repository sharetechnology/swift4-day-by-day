//
//  EnumController.swift
//  Swift4Demo
//
//  Created by st on 2018/8/30.
//  Copyright © 2018年 st. All rights reserved.
//

import UIKit


//enum Beverage: CaseIterable {
//    case coffee, tea, juice
//}


struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}


struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}


struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    @discardableResult
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}

class EnumController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO:Temporary plan, refactor later
        //FIXME: 2018年08月31日11:57:13
        //MARK:2018年08月31日11:57:43
        //???: 2018年08月31日11:57:13
        //!!!:2018年08月31日11:57:13
        //WARNING:2018年08月31日11:58:00
//        ERROR1:2018年08月31日11:58:49
        
        
//        let numberOfChoices = Beverage.allCases.count
//        print("\(numberOfChoices) beverages available")
//        print(numberOfChoices)
        
        var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
        // 该整数范围表示整数值 0、1 和 2
        rangeOfThreeItems.firstValue = 6
        // 该整数范围现在表示整数值 6、7 和 8
        
        var square = Rect(origin: Point(x: 0.0, y: 0.0),
                          size: Size(width: 10.0, height: 10.0))
        let initialSquareCenter = square.center
        square.center = Point(x: 15.0, y: 15.0)
        print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
        
        let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
        print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
        // 打印 "the volume of fourByFiveByTwo is 40.0"
//        fourByFiveByTwo.volume = 2
        
    }
}
