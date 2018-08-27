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
        
        stringTest()
       
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

