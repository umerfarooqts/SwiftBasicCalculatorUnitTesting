//
//  CalculatorModel.swift
//  BasicCalculatorUnitTesting
//
//  Created by Umer Farooq on 22/11/2021.
//

import Foundation

struct CalculatorModel {
    static func Add(x: Double, y: Double) -> Double {
        return x + y;
    }
    
    static func Subtract(x: Double, y: Double) -> Double {
        return x - y;
    }
    
    static func Multiply(x: Double, y: Double) -> Double {
        return x * y;
    }
    
    static func Divide(x: Double, y: Double) -> Double? {
        if y == 0 {
            return nil;
        }
        
        return x / y;
    }
}
