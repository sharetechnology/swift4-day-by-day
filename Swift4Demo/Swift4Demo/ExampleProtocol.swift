//
//  ExampleProtocol.swift
//  Swift4Demo
//
//  Created by st on 2018/8/29.
//  Copyright © 2018年 st. All rights reserved.
//


protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

//注意声明 SimpleStructure 时使用了关键字 mutating 来标记一个可修改结构体的方法。 而声明 SimpleClass 时，则不需要标记任何方法，因为一个类中的方法总是可以修改类属性的。


// TODO:编写一个遵循这个协议的枚举。
