//
//  Factory-Method.swift
//  Desin-Patterns
//
//  Created by liweiye on 2020/6/7.
//  Copyright © 2020 liweiye. All rights reserved.
//

import Foundation

class Client2 {
    let f = Factory2()
}

class Factory2 {
    func createProduct() -> Product? { return nil } // 用于继承
    func createProduct(type: Int) -> Product? { // 用于调用
        if type == 0 {
            return ConcreteFactory2A().createProduct()
        } else {
            return ConcreteFactory2B().createProduct()
        }
    }
}

class ConcreteFactory2A: Factory2 {
    override func createProduct() -> Product? {
        // ... 产品加工过程
        return ConcreteProductA()
    }
}

class ConcreteFactory2B: Factory2 {
    override func createProduct() -> Product? {
        // ... 产品加工过程
        return ConcreteProductB()
    }
}

protocol FactoryProtocol {
    func createProduct() -> Product?
}

class Factory4: FactoryProtocol {

    func createProduct() -> Product? {
        return ConcreteProductA()
    }
}

class Factory5: FactoryProtocol {

    func createProduct() -> Product? {
        return ConcreteProductB()
    }
}
