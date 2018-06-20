//: Playground - noun: a place where people can play

import UIKit

func giveAward(to name: String) {
    guard name == "Taylor Swift" else {
        print("No way!")
        return
    }
    
    print("Congratulations, \(name)!")
}

giveAward(to: "Meow")

func giveAnotherAward(to name: String?) {
    guard let winner = name else {
        print("No one won.")
        return
    }
    
    print("Congrats, \(winner)!")
}

giveAnotherAward(to: "Meow")

for i in 1...100 {
    guard i % 8 == 0 else { continue }
    
    print(i)
}
