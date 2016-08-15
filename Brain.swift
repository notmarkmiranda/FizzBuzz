//
//  Brain.swift
//  FizzBuzz
//
//  Created by Mark Miranda on 8/14/16.
//  Copyright © 2016 Mark Miranda. All rights reserved.
//

import Foundation

class Brain: NSObject {
    func isDivisibleByThree(number : Int) -> Bool {
        return isDivisibleBy(3, number : number)
    }
    
    func isDivisibleByFive(number : Int) -> Bool {
        return isDivisibleBy(5, number : number)
    }
    
    func isDivisibleByThreeAndFive(number : Int) -> Bool {
        return isDivisibleBy(15, number : number)
    }
    
    func isDivisibleBy(divisor : Int, number : Int) -> Bool {
        return number % divisor == 0
    }
    
    func check(number : Int) -> String {
        if isDivisibleByThreeAndFive(number) {
            return "FizzBuzz"
        } else if isDivisibleByThree(number) {
            return "Fizz"
        } else if isDivisibleByFive(number) {
            return "Buzz"
        } else {
            return "\(number)"
        }
    }
}