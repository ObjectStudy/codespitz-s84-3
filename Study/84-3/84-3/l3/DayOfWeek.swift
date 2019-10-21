//
//  DayOfWeek.swift
//  84-3
//
//  Created by tskim on 21/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

class DayOfWeek: Calc {
    private let prices = [DayPrice]()

    func calculate(calls: [Call], result: Money) -> Money {
        var sum = Money.zero
        for call in calls {
            let intervals = call.splitByDay()
            for price in self.prices {
                sum = sum.plus(amount: price.calculate(intervals: intervals))
            }
        }
        return result.plus(amount: sum)
    }
}
