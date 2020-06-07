//
//  Abstract-Factory.swift
//  Desin-Patterns
//
//  Created by liweiye on 2020/6/7.
//  Copyright © 2020 liweiye. All rights reserved.
//

import Foundation

protocol ProductE {}
class ConcreteProductE1: ProductE {}
class ConcreteProductE2: ProductE {}

protocol ProductF {}
class ConcreteProductF1: ProductF {}
class ConcreteProductF2: ProductF {}

class Client3 {
    let f = Factory3()
}

class Factory3 {
    func createProductE() -> ProductE? { return nil } // 用于继承
    func createProductF() -> ProductF? { return nil } // 用于继承
    func createProductE(type: Int) -> ProductE? { // 用于调用
        if type == 0 {
            return ConcreteFactory31().createProductE()
        } else {
            return ConcreteFactory32().createProductE()
        }
    }
    func createProductF(type: Int) -> ProductF? { // 用于调用
        if type == 0 {
            return ConcreteFactory31().createProductF()
        } else {
            return ConcreteFactory32().createProductF()
        }
    }
}

class ConcreteFactory31: Factory3 {
    override func createProductE() -> ProductE? {
        // ... 产品加工过程
        return ConcreteProductE1()
    }
    override func createProductF() -> ProductF? {
        // ... 产品加工过程
        return ConcreteProductF1()
    }
}

class ConcreteFactory32: Factory3 {
    override func createProductE() -> ProductE? {
        // ... 产品加工过程
        return ConcreteProductE2()
    }
    override func createProductF() -> ProductF? {
        // ... 产品加工过程
        return ConcreteProductF2()
    }
}

