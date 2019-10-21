//
//  Calc.swift
//  84-3
//
//  Created by tskim on 21/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

protocol Calc {
    func calc(calls: [Call], result: Money) -> Money
    func calculate(calls: [Call], result: Money) -> Money
}

extension Calc {
    func calc(calls: [Call], result: Money) -> Money {
        return calculate(calls: calls, result: result)
    }
}
