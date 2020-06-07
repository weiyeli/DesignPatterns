//
//  ViewController.swift
//  Desin-Patterns
//
//  Created by liweiye on 2020/6/7.
//  Copyright © 2020 liweiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 无工厂方法
        let c1 = Client()
        c1.createProduct(type: 0) // get ConcreteProductA

        // 工厂方法
        let c2 = Client2()
        c2.f.createProduct(type: 0) // get ConcreteProductC

        // 抽象工厂
        let c3 = Client3()
        c3.f.createProductE(type: 0) // get ConcreteProductE1
        c3.f.createProductE(type: 1) // get ConcreteProductE2
        c3.f.createProductF(type: 0) // get ConcreteProductF1
        c3.f.createProductF(type: 1) // get ConcreteProductF2
    }
}

