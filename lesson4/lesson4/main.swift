//
//  main.swift
//  lesson4
//
//  Created by Aruzhan Tlek on 15.11.2022.
//

import Foundation

// function

var myPosition = "Boss"

var friendPosition = "Manager"

switch myPosition {
case "Boss", "Case", "Manager":
    print("Welcome back, have a nice day!")
default:
    print("How can I help you?")
}

func greeting(for employeePosition: String){
    switch employeePosition {
    case "Boss", "Case", "Manager":
        print("Welcome back, have a nice day!")
    default:
        print("How can I help you?")
    }
}

greeting(for: myPosition)

func affirmation(name: String){
    print("Hello world! My name is \(name)!")
}

var myName = "Aruzhan"

affirmation(name: myName)

func affirmationWithInnerOutter(with name: String){
    print("My name is \(name)")
}

affirmationWithInnerOutter(with: myName)


func affirmationWithNoOutter(_ name: String){
    print("My name is \(name)")
}

affirmationWithNoOutter(myName)

func multiply(_ x: Int, _ y: Int){
    print(x * y)
}

multiply(5, 4)

func minMax(array: [Int]) -> (Int, Int) {
    let currentMin = array[0]
    let currentMax = array[0]
    for _ in array{
        
    }
    return(currentMin, currentMax)
}
