//
//  TimeOfDay.swift
//  84-3
//
//  Created by tskim on 21/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

class TimeOfDay: Calc {
    private let basePrice: Money
    private let duration: TimeInterval

    private let starts = [Date]()
    private let ends = [Date]()
    private let durations = [TimeInterval]()
    private let prices = [Money]()



    public init(basePrice: Money, duration: TimeInterval) {
        self.basePrice = basePrice
        self.duration = duration
    }

    func calculate(calls: [Call], result: Money) -> Money {
        var sum = Money.zero
        for call in calls {
            for interval in call.splitByDay() {

            }
        }
        return result.plus(amount: sum)
    }
}

