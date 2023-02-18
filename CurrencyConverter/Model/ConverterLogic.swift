//
//  converterLogic.swift
//  CurrencyConverter
//
//  Created by user232612 on 2/18/23.
//

import Foundation

struct ConverterLogic {
    var usd : Int = 0
    var euroBool : Bool = true
    var realBool : Bool = true
    var bahtBool : Bool = true
    var yuanBool : Bool = true
    
    mutating func setSwitch(_ switchValue : Bool, _ currency : inout Bool) {
        if switchValue {
            currency = true
        } else {
            currency = false
        }
    }
    
    mutating func getEuroValue() -> Double {
        return Double(usd) * 0.93
    }
    
    mutating func getRealValue() -> Double {
        return Double(usd) * 5.17
    }
    
    mutating func getBahtValue() -> Double {
        return Double(usd) * 34.45
    }
    
    mutating func getYuanValue() -> Double {
        return Double(usd) * 6.87
    }
    
    mutating func getRequestedConversions() -> Dictionary<String, Double> {
        var converted = [ "usd" : Double(usd),
                          "euro": euroBool ? getEuroValue() : -1.0,
                          "real": realBool ? getRealValue() : -1.0,
                          "baht": bahtBool ? getBahtValue() : -1.0,
                          "yuan": yuanBool ? getYuanValue() : -1.0
        ]
        return converted
    }

}
