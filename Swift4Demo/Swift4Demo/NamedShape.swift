//
//  NamedShape.swift
//  Swift4Demo
//
//  Created by st on 2018/8/29.
//  Copyright © 2018年 st. All rights reserved.
//

import Foundation

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
//    self 被用来区分 name 属性和构造器的 name 参数。当你创建类实例时，会像传入函数参数一样，给类传入构造器的参数。每个属性都要指定一个值 ---无论是在声明中（ 如 numberOfSides ）还在在构造器里（ 如 name ）。
//    如果你需要在对象被释放之前执行一些清理行为，可以用 deinit 来创建一个折构器。
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
