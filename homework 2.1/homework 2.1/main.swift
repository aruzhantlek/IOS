//
//  main.swift
//  homework 2.1
//
//  Created by Aruzhan Tlek on 18.11.2022.
//

import Foundation


func myGame(){
    
let runGame: String = readLine() ?? "nill"

while runGame == "Start"{
    print("Text your name:")
    let playerName: String = readLine() ?? "nill"
   
    if playerName == "" {
        print("text your name")
    }
    else {
        print("Hello, \(playerName)")
    }
    
    print("""
Choose your position:
Player 1
Player 2
""")
    
    let yourPosition: String = readLine() ?? "nill"
    
    switch yourPosition{
    case "Player 1", "Player 2":
        print("\(playerName) your position is \(yourPosition)")
    default:
        print("""
    Choose your position:
    Player 1
    Player 2
    """)
    }
    
    break
    
}

}

myGame()

print("--------------")


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

