//: Playground - noun: a place where people can play

import UIKit

var names = ["Taylor", "Toby", "Tim", "Tabitha"]
let numbers = [6, 2, 9, 3, 5, 0, 1, 5]

let sorted = names.sorted()

names.sort {
    print("Comparing \($0) and \($1)")
    if ($0 == "Taylor") {
    return true
    } else if $1 == "Taylor" {
    return false
    } else {
    return $0 < $1
    }
}

let lowest = numbers.min()
let highest = numbers.max()

struct Dog: Comparable {
    var breed: String
    var age: Int
    
    static func <(lhs: Dog, rhs: Dog) -> Bool {
        return lhs.age < rhs.age
    }
    
    static func ==(lhs: Dog, rhs: Dog) -> Bool {
        return lhs.age == rhs.age
    }
}

let poppy = Dog(breed: "Poodle", age: 5)
let rusty = Dog(breed: "Labrador", age: 2)
let rover = Dog(breed: "Corgi", age: 11)
let beethoven = Dog(breed: "St Bernard", age: 8)
var dogs = [poppy, rusty, rover]
dogs += [beethoven]

dogs.sort()

let array2 = Array<Int>(1...1000000)
let array3 = ContiguousArray<Int>(1...1000000)

var start = CFAbsoluteTimeGetCurrent()
array2.reduce(0, +)
var end = CFAbsoluteTimeGetCurrent() - start
print("took \(end) seconds")

start = CFAbsoluteTimeGetCurrent()
array3.reduce(0, +)
end = CFAbsoluteTimeGetCurrent() - start
print("Took \(end) seconds.")
