//: Playground - noun: a place where people can play

import UIKit


func convert(target: String) -> String {
    let constant: Double = 100
    
    
    var result = ""
    
    if target.contains("c") && target.contains("m") {
    // range() returns NSRange
        let seperator_c = target.index(of: "c")!
        let sNumber = target[..<seperator_c]
        // print(Double(sNumber)) = Optional()
        let number = Double(sNumber)!/constant
        result = "\(number)m"

    }
    else if target.contains("m") {
        // m -> cm
        let seperator_m = target.index(of: "m")!
        let sNumber = target[..<seperator_m]
        let number = Int(Double(sNumber)!*constant)
        result = "\(number)cm"
    }
    print(result)
    return result
    
}

var result1 = convert(target: "183cm")
var result2 = convert(target: "1.4m")




