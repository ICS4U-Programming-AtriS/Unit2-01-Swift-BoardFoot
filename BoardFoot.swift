//
//  BoardFoot.swift
//
//  Created by Atri Sarker
//  Created on 2025-10-01
//  Version 1.0
//  Copyright (c) 2025 Atri Sarker. All rights reserved.
//
//  This program, given the width and height of a Board Foot,
//  will solve and calculate for the length of the Board Foot.

// Needed for String(format:)
import Foundation
// Constant that defines how many cubic inches are within a Board Foot.
let volume: Double = 144.0

// Function that solves and returns the length of a Board Foot,
// given the width and height.
func calculateBoardFoot(width: Double, height: Double) -> Double {
    let length = Double(volume / (width * height))
    return length
}

// MAIN
func main() {
    // Welcome message
    print("This program figures out the length of a ", terminator: "")
    print("wooden board that is 1 board foot in dimension. ")
    print("One board foot is \(volume) inches³")

    // Get width
    print("Enter the width [inches]: ", terminator: "")
    let widthInput = readLine() ?? ""
    // Get height
    print("Enter the height [inches]: ", terminator: "")
    let heightInput = readLine() ?? ""
    // Convert the input strings  to doubles
    if let width = Double(widthInput), let height = Double(heightInput) {
        // Check if the inputs are greater than 0
        if width <= 0 || height <= 0 {
            // If they aren't, give an error message
            // Error message for non-existent dimensions. [IN RED]
            print("\u{001B}[0;31mERROR: INPUTS MUST BE GREATER THAN 0.")
        } else {
            // Call the function to solve for length
            let length: Double = calculateBoardFoot(width: width, height: height)
            // Display the length [IN YELLOW]
            print(String(format: "\u{001B}[0;33mSolved Length: %.6f", length), terminator: "")
            print(" inches.")
        }
    } else {
        // Error message for non-numeric dimensions. [IN RED]
        print("\u{001B}[0;31mERROR: INPUT MUST BE NUMERIC.")
    }
  }

// Call the main function to start the program
main()
