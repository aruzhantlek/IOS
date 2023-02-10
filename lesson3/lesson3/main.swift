//
//  main.swift
//  lesson3
//
//  Created by Aruzhan Tlek on 14.11.2022.
//

import Foundation

let names: [String] = ["Anna", "Ben", "Jack", "Alex"]
for name in names {
    print("hello \(name)")
}

let personNameAge: [String: Int] = ["Anna": 25, "Ben": 35, "Alex": 45]
for (personName, personAge) in personNameAge{
    print("\(personName) is \(personAge) years old")
}

for index in 80...90  {
    print("\(index) times 5 is \(index * 5 )")
}


var isRaining: Bool = true
if isRaining {
    print("Take an umbrella")
} else{
    print("Have a great time!")
}

var studentAge: Int = 17
var employeePosition: String = "Boss"

switch employeePosition {
case "Boss":
    print("You have full access")
case "Manager":
    print("You almost have full position")
default:
    print("You don't have access!")
}

let approximateCount = 62
let countedThings = "Moons orbiting Saturn"
let naturalCount: String

switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "dozens of"
default:
    naturalCount = "several"
}

print("There are \(naturalCount) \(countedThings)")


let point = (2, 0)
/*
switch point {
case (let x, 0):
    print("on the x-axis with an ")
default:
    print("Hello")
}
*/
