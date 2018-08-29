//
//  SimpleStructure.swift
//  Swift4Demo
//
//  Created by st on 2018/8/29.
//  Copyright © 2018年 st. All rights reserved.
//

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
