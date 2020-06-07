//
//  None-Factory.swift
//  Desin-Patterns
//
//  Created by liweiye on 2020/6/7.
//  Copyright © 2020 liweiye. All rights reserved.
//

import Foundation

protocol Product {}
class ConcreteProductA: Product {}
class ConcreteProductB: Product {}

class Client {
    func createProduct(type: Int) -> Product {
        if type == 0 {
            return ConcreteProductA()
        } else {
            return ConcreteProductB()
        }
    }
}
