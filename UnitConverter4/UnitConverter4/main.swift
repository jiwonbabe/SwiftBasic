//
//  main.swift
//  UnitConverter4
//
//  Created by 배지원 on 2017. 10. 17..
//  Copyright © 2017년 Jiwon Bae. All rights reserved.
//

import Foundation
// Makes Array for units;
// to manage data
var units: [String] = ["cm", "m", "inch"]

// Distinguish what kind of unit is.
func distingushUnit(from numUnit: String) -> String {
    var rightUnit: String = ""
    for unit in units{
        if numUnit.contains(unit) {
            rightUnit = unit
            break
        }
    }
    return rightUnit
}

// Seperates number and unit
func seperateNumUnit(of numUnit: String) -> String {
    var num = ""
    let unit = distingushUnit(from: numUnit)
    if(unit == "cm") {
        num = numUnit.trimmingCharacters(in: CharacterSet(charactersIn: "cm"))
    }
    if(unit == "m") {
        num = numUnit.trimmingCharacters(in: CharacterSet(charactersIn: "m"))
    }
    if(unit == "inch") {
        num = numUnit.trimmingCharacters(in: CharacterSet(charactersIn: "inch"))
    }
    return num
}

// Accepts input from user.
//func acceptInput(){
    let numUnit_resultUnit = readLine() ?? " "
    // Splits the userInput string.
    let space = numUnit_resultUnit.index(of: " ") ?? numUnit_resultUnit.endIndex
    let numUnit = String(numUnit_resultUnit[..<space])
    let unit = numUnit_resultUnit[space...]
    let num = seperateNumUnit(of: numUnit)
    print(num)
    // testCode:   print(unit)

    // 뒤에 붙어있는 단위가 무엇인지 구분하는 코드 필요
    // 숫자, 단위 분리하는 코드
//    Unit.seperateNumUnit(target: numUnit)
//}




