//
//  main.swift
//  repeatlesson
//
//  Created by Aruzhan Tlek on 15.12.2022.
//

import Foundation

protocol Flyable {
    func fly()
}

protocol Swimmable {
    func swim()
}

protocol Hunter {
    func hunt()
}

protocol Voicable {
    func voice()
}

class Bird {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class Eagle: Bird, Flyable, Hunter {
    func fly() {
        print("The eagle is flying")
    }

    func hunt() {
        print("The eagle is hunting")
    }
}

class Duck: Bird, Swimmable, Voicable {
    func swim() {
        print("The duck is swimming")
    }

    func voice() {
        print("The duck is voiding")
    }
}

let eagle = Eagle(name: "Eagle")
eagle.fly()  // prints "The eagle is flying"
eagle.hunt()  // prints "The eagle is hunting"

let duck = Duck(name: "Duck")
duck.swim()  // prints "The duck is swimming"
duck.voice()  // prints "The duck is voiding"
