//: Playground - noun: a place where people can play

import UIKit
import Foundation

enum R {
    enum Storyboards: String {
        case main, detail, upgrade, share, help
    }
    
    enum Images: String {
        case welcome, home, about, button
    }
}

// struct containing its own enum

struct Cat {
    enum Breed {
        case britishShortHair, burmese, persion, ragdoll, russianBlue, scottishFold, siamese
    }
    
    var name: String
    var breed: Breed
}

// placing structs in structs when used together

struct Deck {
    struct Card {
        private enum Suit {
            case hearts, diamonds, clubs, spades
        }
        
        var rank: Int
        private var suit: Suit
    }
    
    var cards = [Card]()
}

let home = R.Images.home
let burmese = Cat.Breed.burmese
// let hearts = Deck.Card.Suit.hearts

struct Point {
    let x: Double
    let y: Double
}

enum DistanceTechnique {
    case euclidean
    case euclideanSquared
    case manhattan
}
//func calculateDistance(start: Point, end: Point, technique: DistanceTechnique) -> Double {
//    func calculateEuclideanDistanceSquared(start: Point, end: Point) -> Double {
//        let deltaX = start.x - end.x
//        let deltaY = start.y - end.y
//
//        return deltaX * deltaX + deltaY * deltaY
//    }
//
//    func calculateEuclideanDistance(start: Point, end: Point) -> Double {
//        return sqrt(calculateEuclideanDistanceSquared(start: start, end: end))
//    }
//
//    func calculateManhattanDistance(start: Point, end: Point) -> Double {
//        return abs(start.x - end.x) + abs(start.y - end.y)
//    }
//
//    switch technique {
//    case .euclidean:
//        return calculateEuclideanDistance(start: start, end: end)
//    case .euclideanSquared:
//        return calculateEuclideanDistanceSquared(start: start, end: end)
//    case .manhattan:
//        return calculateManhattanDistance(start: start, end: end)
//    }
//}
//
//let distance = calculateDistance(start: Point(x: 10, y: 10), end: Point(x: 100, y: 100), technique: .euclidean)


//rewrite

func calculateDistance(start: Point, end: Point, technique: DistanceTechnique) -> Double {
    func calculateEuclideanDistanceSquared() -> Double {
        let deltaX = start.x - end.x
        let deltaY = start.y - end.y
        
        return deltaX * deltaX + deltaY * deltaY
    }
    
    func calculateEuclideanDistance() -> Double {
        return sqrt(calculateEuclideanDistanceSquared())
    }
    
    func calculateManhattanDistance() -> Double {
        return abs(start.x - end.x) + abs(start.y - end.y)
    }
    
    switch technique {
    case .euclidean:
        return calculateEuclideanDistance()
    case .euclideanSquared:
        return calculateEuclideanDistanceSquared()
    case .manhattan:
        return calculateManhattanDistance()
    }
}
