//
//  ViewController.swift
//  Swift4Demo
//
//  Created by st on 2018/8/27.
//  Copyright © 2018年 st. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        substringTest()
        
//        stringTest()
       
//        ifTest()
        funcTest()
        
    }

    func funcTest(){
        func greet(person: String, day: String) -> String {
            return "Hello \(person), today is \(day)."
        }
        print(greet(person: "Bob", day: "Tuesday"))
        
        func greet1(_ person: String, on day: String) -> String {
            return "Hello \(person), today is \(day)."
        }
        print(greet1("John", on: "Wednesday"))
        
        
        func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
            var min = scores[0]
            var max = scores[0]
            var sum = 0
            
            for score in scores {
                if score > max {
                    max = score
                } else if score < min {
                    min = score
                }
                sum += score
            }
            
            return (min, max, sum)
        }
        let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
        print(statistics.sum)
        print(statistics.2)
        
        
        func returnFifteen() -> Int {
            var y = 10
            func add() {
                y += 5
            }
            add()
            return y
        }
        print(returnFifteen())
        
        
        func makeIncrementer() -> ((Int) -> Int) {
            func addOne(number: Int) -> Int {
                return 1 + number
            }
            return addOne
        }
        let increment = makeIncrementer()
        print(increment(7))
        
        
        func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
            for item in list {
                if condition(item) {
                    return true
                }
            }
            return false
        }
        func lessThanTen(number: Int) -> Bool {
            return number < 10
        }
        let numbers = [20, 19, 17, 12]
        print(hasAnyMatches(list: numbers, condition: lessThanTen))
        
        
        let result0 = numbers.map({ (number: Int) -> Int in
            let result = 3 * number
            return result
        })
        
        print(result0)
        
        let result1 = numbers.map({ (number: Int) -> Int in
            if number%2 == 1 {
                return 0;
            }else {
                return number;
            }
        })
        
        print(result1)
        
        let mappedNumbers = numbers.map({ number in 3 * number })
        print(mappedNumbers)
        
        let sortedNumbers = numbers.sorted { $0 > $1 }
        print(sortedNumbers)
    }
    
    func ifTest() {
        
        let individualScores = [75, 43, 103, 87, 12]
        var teamScore = 0
        for score in individualScores {
            if score > 50 {
                teamScore += 3
            } else {
                teamScore += 1
            }
        }
        print(teamScore)
        
        
        let optionalString: String? = "Hello"
        print(optionalString == nil)
        
        let optionalName: String? = "John Appleseed"
        var greeting = "Hello!"
        if let name = optionalName {
            greeting = "Hello, \(name)"
        }
        
        print(greeting)
        
        let nickName: String? = nil
        let fullName: String = "John Appleseed"
        let informalGreeting = "Hi \(nickName ?? fullName)"
        
        print(informalGreeting)
        
        let vegetable = "red pepper"
        
        //  MARK:删除 default 语句, 提示 “ Switch must be exhaustive ”，保证语句完整性
        switch vegetable {
        case "celery":
            print("Add some raisins and make ants on a log.")
        case "cucumber", "watercress":
            print("That would make a good tea sandwich.")
        case let x where x.hasSuffix("pepper"):
            print("Is it a spicy \(x)?")
        default:
            print("Everything tastes good in soup.")
        }
        
        
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
            ]
        var largest = 0
        //  MARK: Immutable value 'kind' was never used; consider replacing with '_' or removing it
        for (kind, numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                }
            }
        }
        print(largest)
        
        
        var n = 2
        while n < 100 {
            n *= 2
        }
        print(n)
        
        var m = 2
        repeat {
            m *= 2
        } while m < 100
        print(m)
        
        // MARK: 使用 ..< 约束的范围不包括上界，使用 ... 约束的范围包括上界
        var total = 0
        for i in 0..<4 {
            total += i
        }
        print(total)
    }
    
    func stringTest(){
        let apples = 3
        let oranges = 5
        let appleSummary = "I have \(apples) apples."
        let fruitSummary = "I have \(apples + oranges) pieces of fruit."
        
        print(appleSummary)
        print(fruitSummary)
        
        let quotation = """
        I said "I have \(apples) apples."
        And then I said "I have \(apples + oranges) pieces of fruit."
        """
        print(quotation)
        
        var shoppingList = ["catfish", "water", "tulips", "blue paint"]
        shoppingList[1] = "bottle of water"
        print(shoppingList)
        
        var occupations = [
            "Malcolm": "Captain",
            "Kaylee": "Mechanic",
            ]
        occupations["Jayne"] = "Public Relations"
        print(occupations)
        
        
        let emptyArray = [String]()
        let emptyDictionary = [String: Float]()
        
        print(emptyArray)
        print(emptyDictionary)
        
        shoppingList = []
        occupations = [:]
        print(shoppingList)
        print(occupations)
    }
    
    func substringTest(){
        /// A slice of a string.
        ///
        /// When you create a slice of a string, a `Substring` instance is the result.
        /// Operating on substrings is fast and efficient because a substring shares
        /// its storage with the original string. The `Substring` type presents the
        /// same interface as `String`, so you can avoid or defer any copying of the
        /// string's contents.
        ///
        /// The following example creates a `greeting` string, and then finds the
        /// substring of the first sentence:
        ///
        let greeting = "Hi there! It's nice to meet you! 👋"
        let endOfSentence = greeting.index(of: "!")!
        let firstSentence = greeting[...endOfSentence]
        print(endOfSentence)
        print(firstSentence)
        // firstSentence == "Hi there!"
        ///
        /// You can perform many string operations on a substring. Here, we find the
        /// length of the first sentence and create an uppercase version.
        ///
        print("'\(firstSentence)' is \(firstSentence.count) characters long.")
        ///     // Prints "'Hi there!' is 9 characters long."
        ///
        ///     let shoutingSentence = firstSentence.uppercased()
        ///     // shoutingSentence == "HI THERE!"
        ///
        /// Converting a Substring to a String
        /// ==================================
        ///
        /// This example defines a `rawData` string with some unstructured data, and
        /// then uses the string's `prefix(while:)` method to create a substring of
        /// the numeric prefix:
        ///
        let rawInput = "126 a.b 22219 zzzzzz"
        let numericPrefix = rawInput.prefix(while: { "0"..."9" ~= $0 })
        print(numericPrefix)
        ///     // numericPrefix is the substring "126"
        ///
        /// When you need to store a substring or pass it to a function that requires a
        /// `String` instance, you can convert it to a `String` by using the
        /// `String(_:)` initializer. Calling this initializer copies the contents of
        /// the substring to a new string.
        ///
        
        func parseAndAddOne(_ s: String) -> Int {
            return Int(s, radix: 10)! + 1
        }
//            _ = parseAndAddOne(numericPrefix)
        
        ///     // error: cannot convert value...
        
        let incrementedPrefix = parseAndAddOne(String(numericPrefix))
        print(incrementedPrefix)
        
        ///     // incrementedPrefix == 127
        ///
        /// Alternatively, you can convert the function that takes a `String` to one
        /// that is generic over the `StringProtocol` protocol. The following code
        /// declares a generic version of the `parseAndAddOne(_:)` function:
        ///
        
        func genericParseAndAddOne<S: StringProtocol>(_ s: S) -> Int {
            return Int(s, radix: 10)! + 1
        }
        
        let genericallyIncremented = genericParseAndAddOne(numericPrefix)
        print(genericallyIncremented)
        ///     // genericallyIncremented == 127
        ///
        /// You can call this generic function with an instance of either `String` or
        /// `Substring`.
        ///
        /// - Important: Don't store substrings longer than you need them to perform a
        ///   specific operation. A substring holds a reference to the entire storage
        ///   of the string it comes from, not just to the portion it presents, even
        ///   when there is no other reference to the original string. Storing
        ///   substrings may, therefore, prolong the lifetime of string data that is
        ///   no longer otherwise accessible, which can appear to be memory leakage.
        // Do any additional setup after loading the view, typically from a nib.
    }

}

