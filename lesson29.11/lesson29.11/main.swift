//
//  main.swift
//  lesson29.11
//
//  Created by Aruzhan Tlek on 29.11.2022.
//

import Foundation

let myList: [Int] = [3, 6, 21, 44, 78, 51, 43]
let myTarget: Int = 3

/* func findMultiples(with list: [Int], target: Int){
    var newList: [Int] = []
    for number in list {
        if number % target == 0{
            newList.append(number)
        }
    }
    print(newList)
}

findMultiples(with: myList, target: myTarget)

*/

func findMultiples(closure: (Int) -> Bool, array: [Int]) -> [Int] {
    var newArray = [Int]()
    
    for number in array {
        if closure(number){
            newArray.append(number)
        }
    }
    return newArray
}

func divisibleNumber(_ value: Int) -> Bool{
    let targetNum = 3
    return value % targetNum == 0
}

let result = findMultiples(closure: divisibleNumber, array: myList)

let resultWithoutFunc = findMultiples(closure: { value in
    return value % myTarget  == 0
}, array: myList)

print(result)
print(resultWithoutFunc)


let myArray: [Int] = [1, 5, 7, 8]

var descendingOrder = myArray.sorted(by: {c1, c2 in return c1 < c2})
var ascendingOrder = myArray.sorted(by: {c1, c2 in return c1 > c2})

print(descendingOrder)
print(ascendingOrder)
