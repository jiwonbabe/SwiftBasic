//
//  main.swift
//  UnitConverter3_Cmd
//
//  Created by 배지원 on 2017. 10. 17..
//  Copyright © 2017년 Jiwon Bae. All rights reserved.
//

import Foundation

let constant: Double = 100
var result = ""

func cmToM(target: String) -> String {
    let seperator_c = target.index(of: "c")!
    let sNumber = target[..<seperator_c]
    // print(Double(sNumber)) = Optional()
    let number = Double(sNumber)!/constant
    result = "\(number)m"
    print(result)
    return result
}
func mToCm(target: String) -> String {
    // m -> cm
    let seperator_m = target.index(of: "m")!
    let sNumber = target[..<seperator_m]
    let number = Int(Double(sNumber)!*constant)
    result = "\(number)cm"
    
    print(result)
    return result
    
}

let inputValue = readLine()
if let input = inputValue {
    if input.contains("c") && input.contains("m"){
        cmToM(target: input)
    }
    else if input.contains("m"){
        mToCm(target: input)
    }
}






