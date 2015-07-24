//
//  RomanNumeral.swift
//  RomanNumeralConverter
//
//  Created by Smashing Boxes on 7/24/15.
//  Copyright (c) 2015 Smashing Boxes. All rights reserved.
//

import Foundation

struct RomanNumeral {
  var numeralDictionary: [Int: String] = [
    1: "I",
    4: "IV",
    5: "V",
    9: "IX",
    10: "X",
    40: "XL",
    50: "L",
    90: "XC",
    100: "C",
    400: "CD",
    500: "D",
    900: "CM",
    1000: "M"
  ]
  
  // Converts a number to its RN equivalent
  func romanize(var number: Int) -> String {
    var romanNumeralString: String = ""
    while number > 0 {
      let largestKey = findLargestKeyInDictionary(number)
      let romanNumeral = numeralDictionary[largestKey]
      romanNumeralString += romanNumeral!
      number -= largestKey
    }
    return romanNumeralString
  }
  
  // Finds the largest key in the dictionary that is
  // less than or equal to the number
  func findLargestKeyInDictionary(number: Int) -> Int {
    let keys = numeralDictionary.keys.array.sorted(<)
    var largestKey = keys[0]
    for key in keys {
      if key > largestKey && key <= number {
        largestKey = key
      }
    }
    return largestKey
  }
}