import UIKit
import Foundation

let descendingOrder_input: Int = 7834

func descendingOrder(of number: Int) -> Int {
    let sortedCharacters = String(number).sorted { $0 > $1 }
    return Int(String(sortedCharacters))!
}
let descendingOrder_result = descendingOrder(of: descendingOrder_input)


let towerBuilder_input = 5
func towerBuilder(n:Int) -> [String] {
  var result:[String] = []
  
  for num in 1...n {
    let line = String(repeating: " ", count: n-num)
            + String(repeating: "*", count: 2*num - 1)
            + String(repeating: " ", count: n-num)
    result.append(line)
  }
  return result
}
towerBuilder(n: towerBuilder_input)



func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
    var result: [T] = []
    for subArr in arr {
        for num in subArr {
            result.append(num)
        }
    }
    result.sort(by: <)
    return result
}

func findUniq(_ arr: [Int]) -> Int {
    let sortedArray = arr.sorted()
    return sortedArray[0] == sortedArray[1]
    ? sortedArray[sortedArray.count-1]
    : sortedArray[0]
}

func spinWords(in sentence: String) -> String {
    var result: String = ""
    var strArray: [String] = sentence.split(separator: " ").map(String.init)
    
    for str in strArray {
        result += (str.count > 4 ? String(str.reversed())
                   : str) + " "
    }
    return result.trimmingCharacters(in: .whitespacesAndNewlines)
}

func countBits(_ n: Int) -> Int {
    if(n==0) {return 0}
    
    var num: Int = n
    var result: Int = 1
    while(num > 1)
    {
        result += num % 2
        num = num/2
    }
    return result
}

func disemvowel(_ s: String) -> String {
    let vowelArr: [String] = ["a","e","i","o","u"]
    return s.map{ vowelArr.contains(String($0).lowercased()) ? "" : String($0) }
        .joined(separator: "")
}

func findIt(_ seq: [Int]) -> Int {
    for num in seq {
        let count = seq.filter{ $0 == num }.count
        if( count % 2 == 1)
        {
            return num
        }
    }
  return 0
}

func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
    
    func converToLetter(_ mod: Int) -> String
        {
            switch(mod) {
            case 0:
                return "0"
            case 10:
                return "A"
            case 11:
                return "B"
            case 12:
                return "C"
            case 13:
                return "D"
            case 14:
                return "E"
            case 15:
                return "F"
            default:
                return String(mod)
            }
        }
        
        func convertToHex(_ decimal: Int) -> String
        {
            if(decimal < 0) { return "00" }
            if(decimal > 255) { return "FF" }
            
            let letter2 = converToLetter(decimal % 16)
            let number1 = floor(Float(decimal/16))
            return converToLetter(Int(number1)) + letter2
        }
        return convertToHex(r)
            + convertToHex(g)
            + convertToHex(b)
}



let A = [1,2,3,4,5]
let B = [5,4,3,2,1]

let sortedSegments = zip(A, B).sorted { $0.1 < $1.1 }

