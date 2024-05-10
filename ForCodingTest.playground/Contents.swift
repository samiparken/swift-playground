import UIKit
import Foundation

// String -> [Int]
let intString = "27384782"
let intStringToArray = intString.map{String($0)}
print(intStringToArray)
let intString2 = "27,38,47,82"
let intStringToArray2 = intString2
    .split(separator: ",")
    .map{String($0)}
print(intStringToArray2)

// [Int] -> String
let intArray = [1, 2, 3, 4, 5]
let intArrayToString = intArray.map{String($0)}.joined()
print(intString, terminator:"")

// String.sort
let charString = "1g2i3k4s5n6p"
let sortedCharString = charString.sorted { $0 > $1 }.map{String($0)}.joined()
print(sortedCharString, terminator:"")

// String.filtering
let dartResult = "1.2.3.4.5.6 3.23.k"
var scores = dartResult
    .split(whereSeparator: {" .k".contains($0)})
    .map {String($0)}
    .joined()
print(scores)

// String.Replace
let strReplace = "ung!chun!"
let strReplaceResult = strReplace.replacingOccurrences(of: "!", with: "?")
print(strReplaceResult) // ung?chun?

// Character.repeat
let stringRepeat = String(repeating: "ㅋ", count: 10)
print(stringRepeat) // "ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ"

