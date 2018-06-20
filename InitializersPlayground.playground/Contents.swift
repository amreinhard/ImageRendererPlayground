//: Playground - noun: a place where people can play

import UIKit

let allViews = [UIView(), UIButton(), UIView()]

let buttons = allViews.compactMap { (view) -> UIButton? in
    return view as? UIButton
}

buttons

let heading = "This is a heading"
let underline = String(repeating: "=", count: heading.count)
let equalsArray = [String](repeating: "=", count: heading.count)
var board = [[String]](repeating: [String](repeating: "", count: 10), count: 10)

let someInteger = 5
let str2 = String(someInteger)

if let int2 = Int("1989") {
    print(int2)
}

let int3 = Int("1989") ?? 0
print(int3)

let str3 = String(28, radix: 16)
let str4 = String(28, radix: 16, uppercase: true)
let int4 = Int("1C", radix: 16)

let scores = [5, 3, 6, 1, 8, 3, 9]
let scoresSet = Set(scores)
let uniqueScores = Array(scoresSet)

var dictionary = Dictionary<String, String>(minimumCapacity: 10)
