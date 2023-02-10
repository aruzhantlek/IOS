//
//  main.swift
//  homework2
//
//  Created by Aruzhan Tlek on 17.11.2022.
//

import Foundation



func arrayCheck(numbers: [Int]) -> ([Int]){
    
var newArray: [Int] = []
var zeroArray: [Int] = []

for check in numbers{
    if check != 0 {
        newArray.append(check)
    }
    else {
        zeroArray.append(check)}
}

return newArray + zeroArray
    
}
var num: [Int] = [1, 5, 0, 4, 5, 0, 7, 0, 8]

print(arrayCheck(numbers: num))
