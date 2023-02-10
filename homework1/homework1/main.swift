//
//  main.swift
//  homework1
//
//  Created by Aruzhan Tlek on 10.11.2022.
//

import Foundation

let myName: String = "Aruzhan"
var myAge: Int = 22

print("I will be \(myAge + 1) in next year")

var myFavoriteColor: String = "ocean blue" // also i like all delicate colors

let myHusbandName: String = "Ilyas"; print(myHusbandName)
var myHusbandAge: Int = 24


let myDaughterName: String = "Maryam"
var myDaughterAge: Int = 3

var myFavoriteQuote: String = """
Steve Jobs: "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma which is living with the results of other people's thinking \u{2728}"
"""

print(myFavoriteQuote)

var rareNames: [String] = ["Latifa", "Rabiya", "Tanzilya", "Habiba", "Zeynab", "Zamina", "Iman", "Salima", "Sumaya", "Fatilya", "Fazilya"]

var firstRareName = rareNames[0]

rareNames.append("Uliya")
rareNames.insert("Ramina", at: 5)
rareNames.remove(at: 6)

var rareNamesTwo = Array(repeating: "Asiya", count: 5)
rareNamesTwo.removeLast()

var rareNamesThree: [String] = ["Anas", "Bahir", "Burkhan", "Vasim", "Garay", "Idris", "Ihsan"]
rareNamesThree[1...3] = ["Abu Bakr", "Amal"]

rareNamesThree += ["Farah"]

print(rareNames + rareNamesThree, rareNamesTwo)

print("I found \(rareNames.count + rareNamesThree.count) rare names and I wrote down the ones I liked as the first element of the array. This is the name \(firstRareName).")


var myHobbies: Set<String> = ["baking", "graphic design", "planning", "photography"] // reading, volunteerinng

myHobbies.insert("reading")

var myTravelCity: [String: String] = ["ALA": "Almaty", "АКХ": "Aktobe", "GUW": "Atyrau", "SCO": "Aktau", "TSE": "Astana", "KGF": "Karaganda", "PLX": "Semey", "BHХ": "Balkhash", "AYT": "Antalya", "DXB": "Dubai", "SHJ": "Sharjah"] //Aktobe, Atyrau, Aktau, Astana, Karaganda, Semey, Belek, Dubai, Sharjah, New York

myTravelCity["JFK"] = "New York"
myTravelCity.updateValue("John F. Kennedy Airport ", forKey: "JFK")
myTravelCity.removeValue(forKey: "BHX")

print(myTravelCity)

print("""
Hello. My name is \(myName). I'm \(myAge) years old. I was born and raised in the beautiful city of \(String(describing: myTravelCity["ALA"])). I have husband and a daughter, his name is \(myHusbandName), he is \(myHusbandAge) years old. My daughter's name is \(myDaughterName), a couple of days ago she turned \(myDaughterAge)  years old. My favorite color is \(myFavoriteColor). I have \(myHobbies.count) types of hobbies: \(myHobbies). I also visited different cities of Kazakhstan and other countries. This is a list of countries where I have traveled: \(myTravelCity).
""")

