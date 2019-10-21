//
//  PricePerTime.swift
//  84-3
//
//  Created by tskim on 21/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation


class PricePerTime: Calc {
    private let price: Money
    private let second: Date


    public init(price: Money, second: Date) {
        self.price = price
        self.second = second
    }

    func calculate(calls: [Call], result: Money) -> Money {
        var sum = Money.zero
        for call in calls {
            let calcSecond = Int(call.getDuration()) / second.seconds
            let r = price.times(times: calcSecond)
            if r.isLessThanOrEqual(amount: Money.zero) {
                fatalError("calculate error")
            }
            sum = sum.plus(amount: r)
        }
        return result.plus(amount: sum)
    }
}

extension Date {

    var seconds: Int {
        return 0
    }
}

