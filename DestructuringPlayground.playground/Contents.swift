//: Playground - noun: a place where people can play

import UIKit

func getPerson() -> (String, Int) {
    return ("Taylor Swift", 26)
}

//let (name, age) = getPerson()
//print("\(name) is \(age) years old")

let (_, age) = getPerson()
print("That person is \(age) years old")

let (captain, chef) = ("Janeway", "Neelix")
// let (engineer, pilot) = (getEngineer(), getPilot())


var a = 10
var b = 20

(b, a) = (a, b)
