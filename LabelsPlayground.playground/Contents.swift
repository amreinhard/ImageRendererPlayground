//: Playground - noun: a place where people can play

import UIKit

var board = [[String]](repeating: [String(repeating: "", count: 10)], count: 5)
board[3][5] = "x"

rowLoop: for (rowIndex, cols) in board.enumerated() {
    for (colIndex, col) in cols.enumerated() {
        if col == "x" {
            print("Found the treasure at row \(rowIndex) col \(colIndex)!")
            break rowLoop
        }
    }
}

//using labeled conditional statements with guarding

//printing: if userRequestedPrint() {
//    guard documentSaved() else { break printing }
//    guard userAuthenticated() else { break printing }
//    guard connectToNetwork() else { break printing }
//    guard uploadDocument("work.doc") else { break printing }
//    guard printDocument() else { break printing }

//    print("Printed successfully!")
//}
