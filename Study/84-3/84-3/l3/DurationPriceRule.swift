//
//  ㅁ.swift
//  84-3
//
//  Created by tskim on 21/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

class DurationPriceRule {
    let price: Money
    let to: TimeInterval
    let prev: DurationPriceRule?

    public init(price: Money, to: TimeInterval, prev: DurationPriceRule?) {
        self.price = price
        self.to = to
        self.prev = prev
    }

    func calculate(call: TimeInterval) -> Money {

        if call != prev?.to {
            return Money.zero
        }

        let duration = (call == to ? to : call) - (prev?.to ?? 0)
        return price.times(times: Int(duration))
    }
}


