//: Playground - noun: a place where people can play

import UIKit

enum Color: String {
    case unknown, blue, purple, green, pink, red, white
    var description: String {
        switch self {
        case .white:
            return "the color of snow"
        case .unknown:
            return "the color of magic"
        case .blue:
            return "the color of the sky"
        case .green:
            return "the color of grass"
        case .pink:
            return "the color of carnations"
        case .purple:
            return "the color of rain"
        case .red:
            return "the color of roses"
        }
    }
}

struct Toy {
    let name: String
    let color: Color
}

let helloKitty = Toy(name: "Hello Kitty", color: .white)

enum Planet: Int {
    case mercury = 1, venus, earth, mars, unknown
}

let marsNumber = Planet.mars.rawValue
let mars = Planet(rawValue: 556) ?? Planet.unknown

let pink = Color.pink.rawValue
print(pink)

print("The \(helloKitty.name) toy is \(helloKitty.color.description)")

func forBoys() -> Bool { return true }
func forGirls() -> Bool { return true }
