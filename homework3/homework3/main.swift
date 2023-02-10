//
//  main.swift
//  homework3
//
//  Created by Aruzhan Tlek on 23.11.2022.
//

import Foundation

func reduceArray (_ a: inout [Int]){
    
/*  for var index in a {
        while index > 0 {
            index = index - 1
            print(index)
        }
    }
 */
    
    for i in 0..<a.count {
        while a[i] != 0 {
            a[i] -= 1
            print(a)
        }
    
    }
}

var array: [Int] = [3, 4, 1, 7, 8]

reduceArray(&array)



print("----------------------------------------------")

func richManResult(firstBankAcc: [Int], secondBankAcc: [Int], thirdBankAcc: [Int]){
    
    func sumOfMoney(wallet: [Int]) -> (Int){
        
        var sum = 0
        for value in wallet {
            sum += value
          }
            return sum
        }
        
        let firstMan = sumOfMoney(wallet: firstBankAcc)
        let secondMan = sumOfMoney(wallet: secondBankAcc)
        let thirdMan = sumOfMoney(wallet: thirdBankAcc)
        
        
        if firstMan > secondMan, firstMan > thirdMan {
            print("The richest is the first man")
        }
        else if secondMan > firstMan, secondMan > thirdMan {
            print("The richest is the second man")
        }
        else if thirdMan > firstMan, thirdMan > secondMan {
            print("The richest is the third man")
        }
        else if firstMan == secondMan, secondMan > thirdMan {
            print("The richest are the first man and second man")
        }
        else if secondMan == thirdMan, thirdMan > firstMan {
            print("The richest are the second man and third man")
        }
        else if firstMan == thirdMan, firstMan > secondMan{
            print("The richest are the first man and third man")
        }
        else {
            print("The richest are the first man, second man and third man")
        }
     
         /* func maxOfThree(_ x: Int, _ y: Int, _ z: Int) -> Int {
            if x > y, x > z
            {
                return x
            }
            else if y > z, y > x
            {
                return y
            }
            else if z > y, z > x
            {
                return z
            }
            else if x == y, y > z
            {
                return x
            }
            else if y == z, z > x
            {
                return y
            }
            else
            {
                return x
            }
        }
         */
    
}


let a: [Int] = [0, 0, 1]
let b: [Int] = [3, 0, 1]
let c: [Int] = [3, 0, 1]

richManResult(firstBankAcc: a, secondBankAcc: b, thirdBankAcc: c)
