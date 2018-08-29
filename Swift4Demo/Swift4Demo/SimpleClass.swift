//
//  SimpleClass.swift
//  Swift4Demo
//
//  Created by st on 2018/8/29.
//  Copyright © 2018年 st. All rights reserved.
//

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
