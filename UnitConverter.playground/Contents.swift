//: Playground - noun: a place where people can play

import UIKit
// cm -> m
var a: Int = 120
var b: String = "\(a)cm"
var c: Double = Double(a)*0.01
var d: String = "\(c)m"
print("cm -> m : ", terminator: "")
print(b, "->", d)

// m -> cm
c = 1.86
b = "\(c)m"
a = Int(c*100)
d = "\(a)cm"
print("m -> cm :", terminator: "")
print(b, "->", d)





