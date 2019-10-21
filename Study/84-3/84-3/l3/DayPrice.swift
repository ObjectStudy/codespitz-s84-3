//
//  DayPrice.swift
//  84-3
//
//  Created by tskim on 21/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

class DayPrice {
    private let price: Money
    private let duration: TimeInterval

    private let dayOfWeeks = [DayOfWeek]()

    public init(price: Money, duration: TimeInterval) {
        self.price = price
        self.duration = duration
    }

    public func calculate(intervals: [DateTimeInterval]) -> Money {
        var sum = Money.zero
        return sum
    }
}

