//
//  StringsController.swift
//  Swift4Demo
//
//  Created by st on 2018/8/30.
//  Copyright © 2018年 st. All rights reserved.
//

import Foundation
import UIKit

class StringsController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        stringTest()
//        setFunc()
//        setOperations()
        
//        dicFunc()
        
//        ifFunc()
        
        greet(person: ["name": "John"])
        // 打印 "Hello John!"
        // 打印 "I hope the weather is nice near you."
        greet(person: ["name": "Jane", "location": "Cupertino"])
        // 打印 "Hello Jane!"
        // 打印 "I hope the weather is nice in Cupertino."
        
        
        var currentValue = 4
        let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
        //  `moveNearerToZero` 变量引用着 `stepForward()` 函数
        while currentValue != 0 {
            print("\(currentValue)... ")
            currentValue = moveNearerToZero(currentValue)
        }
        print("zero!")
    }
    
    func chooseStepFunction(backward: Bool) -> (Int) -> Int {
        func stepForward(input: Int) -> Int { return input + 1 }
        func stepBackward(input: Int) -> Int { return input - 1 }
        return backward ? stepBackward : stepForward
    }
    
    
    func greet(person: [String: String]) {
        guard let name = person["name"] else {
            return
        }
        
        print("Hello \(name)!")
        
        guard let location = person["location"] else {
            print("I hope the weather is nice near you.")
            return
        }
        
        print("I hope the weather is nice in \(location).")
    }

    
    func ifFunc()  {
        let minutes = 60
        for tickMark in 0..<minutes {
            // 每分钟渲染一个刻度线（60 次）
            print(tickMark)
        }
        
        let minuteInterval = 5
        for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
            // 每 5 分钟打一个标记（0, 5, 10, 15 ... 45, 50, 55）
            print(tickMark)
        }
        
        let hours = 12
        let hourInterval = 3
        for tickMark in stride(from: 3, through: hours, by: hourInterval) {
            // 每 3 小时打一个标记（3, 6, 9, 12）
            print(tickMark)
        }
        
        let finalSquare = 25
        var board = [Int](repeating: 0, count: finalSquare + 1)
        print(board)
        
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
        
        print(board)
        
        var square = 0
        var diceRoll = 0
        while square < finalSquare {
            // 投掷骰子
            diceRoll += 1
            if diceRoll == 7 { diceRoll = 1 }
            // 根据点数移动
            square += diceRoll
            if square < board.count {
                // 如果我们还在棋盘上，顺着梯子爬上去或者顺着蛇身体滑下去
                square += board[square]
            }
        }
        print("Game over!")
        
        
//        let anotherCharacter: Character = "a"
//        switch anotherCharacter {
//        case "a": // 无效，分支是空的
//        case "A":
//            print("The letter A")
//        default:
//            print("Not the letter A")
//        }
        // 这会报编译错误。
        
//        使用 fallthrough 关键字，可以显式的贯穿特定的 case 分支，参考 贯穿
        let anotherCharacter: Character = "a"
        switch anotherCharacter {
        case "a", "A":
            print("The letter A")
        default:
            print("Not the letter A")
        }
        //  打印 "The letter A"
        
        let yetAnotherPoint = (1, -1)
        switch yetAnotherPoint {
        case let (x, y) where x == y:
            print("(\(x), \(y)) is on the line x == y")
        case let (x, y) where x == -y:
            print("(\(x), \(y)) is on the line x == -y")
        case let (x, y):
            print("(\(x), \(y)) is just some arbitrary point")
        }
        // 打印 "(1, -1) is on the line x == -y"
        
        let anotherPoint = (2, 0)
        switch anotherPoint {
        case (let x, 0):
            print("on the x-axis with an x value of \(x)")
        case (0, let y):
            print("on the y-axis with a y value of \(y)")
        case let (x, y):
            print("somewhere else at (\(x), \(y))")
        }
        // 打印 "on the x-axis with an x value of 2"
        
        let someCharacter: Character = "e"
        switch someCharacter {
        case "a", "e", "i", "o", "u":
            print("\(someCharacter) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
             "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            print("\(someCharacter) is a consonant")
        default:
            print("\(someCharacter) is not a vowel or a consonant")
        }
        // 打印 "e is a vowel"
        
        let stillAnotherPoint = (9, 0)
        switch stillAnotherPoint {
        case (let distance, 0), (0, let distance):
            print("On an axis, \(distance) from the origin")
        default:
            print("Not on an axis")
        }
        // 打印 "On an axis, 9 from the origin"
        
        let integerToDescribe = 5
        var description = "The number \(integerToDescribe) is"
        switch integerToDescribe {
        case 2, 3, 5, 7, 11, 13, 17, 19:
            description += " a prime number, and also"
            fallthrough
        default:
            description += " an integer."
        }
        print(description)
        // 打印 "The number 5 is a prime number, and also an integer."
    }
    
    func dicFunc(){
        var namesOfIntegers = [Int: String]()
        // namesOfIntegers 是一个空的 [Int: String] 字典
        
        namesOfIntegers[16] = "sixteen"
        // namesOfIntegers 现在包含 1 个键值对
        namesOfIntegers = [:]
        // namesOfIntegers 又是一个空的 [Int: String] 类型字典
        
        var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
        
        print("The airports dictionary contains \(airports.count) items.")
        // 打印 "The dictionary of airports contains 2 items."（这个字典有两个数据项）
        
        if airports.isEmpty {
            print("The airports dictionary is empty.")
        } else {
            print("The airports dictionary is not empty.")
        }
        // 打印 "The airports dictionary is not empty."
        
        airports["LHR"] = "London"
        // airports 字典现在包含 3 个元素
        
        airports["LHR"] = "London Heathrow"
        // LHR 应的值被改为 "London Heathrow"
        
        if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
            print("The old value for DUB was \(oldValue).")
        }
        // 打印 "The old value for DUB was Dublin."
        
        if let airportName = airports["DUB"] {
            print("The name of the airport is \(airportName).")
        } else {
            print("That airport is not in the airports dictionary.")
        }
        // 打印 "The name of the airport is Dublin Airport."
        
        airports["APL"] = "Apple International"
        //"Apple Internation" 不是真的 APL 机场，删除它
        airports["APL"] = nil
        // APL 现在被移除了
        
        if let removedValue = airports.removeValue(forKey: "DUB") {
            print("The removed airport's name is \(removedValue).")
        } else {
            print("The airports dictionary does not contain a value for DUB.")
        }
        // 打印 "The removed airport's name is Dublin Airport."
        
        for (airportCode, airportName) in airports {
            print("\(airportCode): \(airportName)")
        }
        // YYZ: Toronto Pearson
        // LHR: London Heathrow
        
        for airportCode in airports.keys {
            print("Airport code: \(airportCode)")
        }
        // Airport code: YYZ
        // Airport code: LHR
        
        for airportName in airports.values {
            print("Airport name: \(airportName)")
        }
        // Airport name: Toronto Pearson
        // Airport name: London Heathrow
        
        let airportCodes = [String](airports.keys)
        // airportCodes 是 ["YYZ", "LHR"]
        print(airportCodes)
        let airportNames = [String](airports.values)
        // airportNames 是 ["Toronto Pearson", "London Heathrow"]
        print(airportNames)
    }
    
    func setOperations(){
        let oddDigits: Set = [1, 3, 5, 7, 9]
        let evenDigits: Set = [0, 2, 4, 6, 8]
        let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
        
//        使用 intersection(_:) 方法根据两个集合中都包含的值创建的一个新的集合。
//        使用 symmetricDifference(_:)  方法根据在一个集合中但不在两个集合中的值创建一个新的集合。
//        使用 union(_:)  方法根据两个集合的值创建一个新的集合。
//        使用 subtracting(_:) 方法根据不在该集合中的值创建一个新的集合。
        
        print(oddDigits.union(evenDigits).sorted())
        // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        print(oddDigits.intersection(evenDigits).sorted())
        // []
        print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
        // [1, 9]
        print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())
        // [1, 2, 9]
        
        let houseAnimals: Set = ["🐶", "🐱"]
        let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
        let cityAnimals: Set = ["🐦", "🐭"]
        
        
//        使用是否相等运算符（==）来判断两个集合是否包含全部相同的值。
//        使用 isSubset(of:) 方法来判断一个集合中的值是否也被包含在另外一个集合中。
//        使用 isSuperset(of:) 方法来判断一个集合中包含另一个集合中所有的值。
//        使用 isStrictSubset(of:) 或 isStrictSuperset(of:) 方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等。
//        使用 isDisjoint(with:) 方法来判断两个集合是否不含有相同的值（是否没有交集）。
        
        print(houseAnimals.isSubset(of: farmAnimals))
        // true
        print(farmAnimals.isSuperset(of: houseAnimals))
        // true
        print(farmAnimals.isDisjoint(with: cityAnimals))
        // true
    }
    
    func setFunc() {
        var letters = Set<Character>()
        print("letters is of type Set<Character> with \(letters.count) items.")
        // 打印 "letters is of type Set<Character> with 0 items."
        print(letters)
        letters.insert("a")
        print(letters)
        // letters 现在含有1个 Character 类型的值
        letters = []
        print(letters.description)
        // letters 现在是一个空的 Set, 但是它依然是 Set<Character> 类型
        
        var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
        
        print("I have \(favoriteGenres.count) favorite music genres.")
        // 打印 "I have 3 favorite music genres."
        
        if favoriteGenres.isEmpty {
            print("As far as music goes, I'm not picky.")
        } else {
            print("I have particular music preferences.")
        }
        // 打印 "I have particular music preferences."
        
        favoriteGenres.insert("Jazz")
        // favoriteGenres 现在包含 4 个元素
        
        if let removedGenre = favoriteGenres.remove("Rock") {
            print("\(removedGenre)? I'm over it.")
        } else {
            print("I never much cared for that.")
        }
        // 打印 "Rock? I'm over it."
        
        if favoriteGenres.contains("Funk") {
            print("I get up on the good foot.")
        } else {
            print("It's too funky in here.")
        }
        // 打印 "It's too funky in here."
        
        for genre in favoriteGenres {
            print("\(genre)")
        }
        // Classical
        // Jazz
        // Hip hop
        
        for genre in favoriteGenres.sorted() {
            print("\(genre)")
        }
        // Classical
        // Hip hop
        // Jazz
    }
    
    func stringTest() {
        let greeting = "Hello, world!"
        let index = greeting.index(of: ",") ?? greeting.endIndex
        let beginning = greeting[..<index]
        // beginning 的值是 "Hello"
        print(beginning)
        
        // 把结果转化为 String 以便长期存储。
        let newString = String(beginning)
        print(newString)
    }
}



