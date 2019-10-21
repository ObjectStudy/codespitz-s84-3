//
//  Money.swift
//  84-3
//
//  Created by tskim on 21/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation


class Money {
    private let amount: Double

    public init(amount: Double) {
        self.amount = amount
    }

    func minus(amount: Money) -> Money {
        return Money(amount: self.amount > amount.amount ? self.amount - amount.amount: 0.0)
    }


    func multi(times: Int) -> Money {
        return Money(amount: 0)
    }

    func times(times: Int) -> Money {
        return Money(amount: 0)
    }

    func plus(amount: Money) -> Money {
        return Money(amount: self.amount + amount.amount)
    }


    func greaterThen(amount: Money) -> Bool {
        return self.amount >= amount.amount
    }
    func isLessThanOrEqual(amount: Money) -> Bool {
        return self.amount <= amount.amount
    }

}

extension Money {
    static func of(amount: Double) -> Money {
        return Money(amount: amount)
    }
    static let zero = Money(amount: 0)
}

