//
//  File.swift
//  84-3
//
//  Created by tskim on 21/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation


class DurationPrice: Calc {
    private var rule = DurationPriceRule(
        price: Money.zero,
        to: 0,
        prev: nil
    )

    func addRule(price: Money, to: TimeInterval) {
        if rule.to > to,
            price.isLessThanOrEqual(amount: Money.zero) {
            fatalError("")
        }
        rule = DurationPriceRule(price: price, to: to, prev: rule)
        
    }
    func calculate(calls: [Call], result: Money) -> Money {
        var sum = Money.zero
        for call in calls {
            var target: DurationPriceRule? = rule
            
            
            repeat {
                sum = sum.plus(amount: target?.calculate(call: call.getDuration()) ?? Money.zero)
                target = target?.prev
            } while target != nil;
        }
        return result.plus(amount: sum)
    }
}
