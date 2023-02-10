//
//  main.swift
//  lessonrepeat
//
//  Created by Aruzhan Tlek on 24.11.2022.
//

import Foundation

let names: [String] = ["Anna", "Bob", "James", "John", "Ilyas", "Aruzhan", "Maryam"]

/*for name in names {
    print("Hello, \(name)")
}
*/

let numberOfLegs = ["spider": 8, "ant": 4, "cat": 6]

for (animalName, legCount) in numberOfLegs {
    print("\(animalName) has \(legCount) legs")
}

/*for index in 2...5 {
    print("Hello, \(names[index])")
}
*/

for index in 0..<names.count {
    print("Hello, \(names[index])")
}

var counter: Int = 0

while counter != 10 {
    print("Not yet, \(counter)")
    counter += 1
}




let puzzleInput = "tlekaruzhan"
var puzzleOutput = ""

let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]

for characters in puzzleInput {
    if charactersToRemove.contains(characters){
        continue
    }
    puzzleOutput.append(characters)
}
print(puzzleOutput)


var randomNum = Int.random(in: 1..<10)
var yourNumber = readLine()




