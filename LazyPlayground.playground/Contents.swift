//: Playground - noun: a place where people can play

import UIKit

//class Singer {
//    let name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    lazy var reversedName = {
//        return "\(self.name.uppercased()) backwards is \(String(self.name.uppercased().reversed()))!"
//    }()
//}
//
//let taylor = Singer(name: "Taylor Swift")
//print(taylor.reversedName)

//class Singer {
//    let name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    lazy var reversedName = self.getReversedName()
//
//    private func getReversedName() -> String {
//        return "\(name.uppercased()) backwards is \(String(name.uppercased().reversed()))!"
//    }
//}

//let taylor = Singer(name: "Taylor Swift")
//print(taylor.reversedName)

class MusicPlayer {
    init() {
        print("ready to play songs!")
    }
}

class Singer {
    static let musicPlayer = MusicPlayer()
    
    init() {
        print("Creating a new singer.")
    }
}

let taylor = Singer()
Singer.musicPlayer

func fibonacci(of num: Int) -> Int {
    if num < 2 {
        return num
    } else {
        return fibonacci(of: num - 1) + fibonacci(of: num - 2)
    }
}

let fibonacciSequence = (0...20).map(fibonacci)
print(fibonacciSequence[10])

let lazyFibonacciSequence = Array(0...199).lazy.map(fibonacci)
print(lazyFibonacciSequence[19])
print(lazyFibonacciSequence[19])
print(lazyFibonacciSequence[19])
