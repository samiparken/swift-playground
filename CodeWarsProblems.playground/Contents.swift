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



var stride_result = ""
for i in stride(from: 3, to: 12, by: 3) {
    stride_result += String(i)
}
print(stride_result)

// 3 6 9 12
stride_result = ""
for i in stride(from: 3, through: 12, by: 3) {
    stride_result += String(i)
}
print(stride_result)


let testArray = [1.5, 2.0, 3.4, 4, 5]
print(testArray, terminator:"")
let subTestArray = testArray[1...3]
print(subTestArray, terminator:"")
// [2, 3, 4]
let temp = subTestArray.map{String($0)}//.joined(separator: "")
print(temp, terminator:"")

let temp2 = temp.filter { !" .".contains($0) }
print(temp2, terminator:"")


let startIdx = testArray.index(testArray.startIndex, offsetBy: 3)
print(testArray[startIdx...])


let numbers: [Int] = [1, 2, 3]
var sumFromThree: Int = numbers.reduce(3) {
    print("\($0) + \($1)")
    // 3 + 1
    // 4 + 2
    // 6 + 3
    return $0 + $1
}
sumFromThree = numbers.reduce(3){ $0 + $1 }
print(sumFromThree) // 9


var result: [Int] = [1, 2, 3, 4]
result.map{String($0)}.joined() // [1, 2, 3, 4] -> 1234
result.map{String($0)}.joined(separator: ", ") // [1, 2, 3, 4] -> 1, 2, 3, 4

