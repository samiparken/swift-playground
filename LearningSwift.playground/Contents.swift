import UIKit
import CoreLocation

var str = "Hello, playground"; print(str)
print("The result of 5 + 3 = \(5+3)")

/* Array Basic */
var arr1 = [3,5,1,6,9]
var arr5: [Int] = []
var arr9: [Double] = [1,2,3,4,5,6,7,8.0]


/* Copy Array */
let specialArray: [Int] = [1,2,3,4,5,6]
let testArray = specialArray

var testArray2: [Int]
testArray2 = specialArray

print(testArray[2])
print(testArray2[2])

let percent: Int = 96
let answerrr = Int(Double(percent) / 5) * 5 + 5



/* json array test*/
let jsontestarray = [
    "hello" : ["test": 5, "11": "test"],
    "helllllo" : ["a" : "b", "c": "d"]
]

var index = jsontestarray.index(jsontestarray.startIndex, offsetBy: 0)
jsontestarray.keys[index]
index = jsontestarray.index(jsontestarray.startIndex, offsetBy: 1)
jsontestarray.values[index]["c"]



/* Dictionary initialize & default values */
var customDict = [String: [String: Int]]()
let preset = ["booking" : 0 , "booked" : 0]
customDict["2020-10-04", default: preset]["booking"]! += 1
print(customDict["2020-10-04"]!["booking"]!)

customDict["2020-10-04", default: preset]["booking"]! += 1
print(customDict["2020-10-04"]!["booking"]!)

customDict["2020-10-04", default: preset]["booking"]! += 1
print(customDict["2020-10-04"]!["booking"]!)


/* Call-by-reference */
struct ArrStruct {
    var arrInStruct: [Double] = [0,1,2,3,4,5,6,7,8,9]
}
var arrStruct = ArrStruct()

func arrFunction( arr: inout [Double] )
{
    arr[3] += 1000000
}
arrFunction(arr: &arrStruct.arrInStruct)
print(arrStruct.arrInStruct[3])

/* implicit & explicit */
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double  = 70


/* Int.random(in:lower...upper) */
var ranNum1 = Int.random(in: 0...9)   // closed range operator ...
var ranNum2 = Int.random(in: 0..<9)   // less than 9
var ranNum3 = Float.random(in: 1...3) // floating point number
var ranBool = Bool.random()
arr1.shuffle()

/* randomElement() */
var ranElement = arr1.randomElement()



/* Function Basic */
func greeting(whoToGreet: String)
{
    print("Hello \(whoToGreet)")
}
greeting(whoToGreet: "Sam!")

func divide(a: Int, b: Int)
{
    print( Double(a)/Double(b) )
}
divide(a:3,b:4)


/* FUNCTION EXAMPLE
 func drawHorizontalLine(from startX: Double, to endX: Double, using color: UIColor)
 {
 ** FORMAT ** (externalName internalName : type)
 ** from : external name
 ** startX : internal name
 ** Double : type
 }
 
 //usage
 drawHorizontalLine(from: 2.5, to: 5.5, using: UIColor.blue)
 */


/* Switch with Range */
let loveScore = Int.random(in: 0...100)
switch loveScore {
case 81...100:
    print("Excellent")
case 41..<81:
    print("Good")
case ..<41:
    print("So so")
default:
    print("Not good")
}

/* Optional */
var player1UserName: String?
var player2UserName: String = "Sam"
//player1UserName = "Jack"
//player1UserName = nil
if(player1UserName != nil){
    print(player1UserName!)
}

/* ?? operator */
// if player1UserName is nil, return "test"
print( player1UserName ?? "test")

/* Struct */
struct Town {
    let name : String
    var citizens: [String]
    var resources: [String:Int]
    var email: String? //optional
    
    init(name: String, citizens: [String], resources: [String:Int], email: String? = nil) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
        self.email = email   //Optional
    }
    
    func fortify(){
        print("Defences increased!")
    }
}
var myTown = [
    Town(name: "Samland", citizens: ["Sam","Angela"], resources: ["Coconuts":100]),
    Town(name: "TTT", citizens: ["ddd","aaa"], resources:["Hello":100])
]



/* Closures (Anonymous Function) */
func calculator (n1: Int, n2: Int, operation:(Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}
func add (no1: Int, no2: Int) -> Int {
    return no1 + no2
}
func multiply (no1: Int, no2: Int) -> Int {
    return no1 * no2
}

// passing a function as an input paramater
calculator (n1: 2, n2: 3, operation: add)
calculator (n1: 3, n2: 6, operation: multiply)
calculator (n1: 3, n2: 6, operation: { (no1: Int, no2: Int) -> Int in
    return no1 * no2
})
calculator (n1: 3, n2: 6, operation: { (no1, no2) in no1 * no2 })
calculator (n1: 3, n2: 6, operation: { $0 * $1 })   // $0: paramater0, $1: paramater1
calculator (n1: 3, n2: 6) { $0 * $1 }



/* Usage of Closures */
let arrayA = [4,3,7,3,1,0]
func addOne (n1: Int) -> Int {
    return n1 + 1
}
print( arrayA.map(addOne))
print( arrayA.map(){$0 + 1} ) //same result & simpler
print( arrayA.map{$0 + 1} )

let newArray = arrayA.map{"\($0)"} //convert to string format.
print(newArray)



/* Computed property */
var aProperty: Int {
    return 2 + 5
}
var bProperty: Int =  {
    return 2 + 5
}()

// automatically assigned according to "conditionId"
var conditionName: String {
    switch aProperty {
    case 200...232:
        return "cloud.bolt"
    case 300...321:
        return "cloud.drizzle"
    case 500...531:
        return "cloud.rain"
    case 600...622:
        return "cloud.snow"
    case 701...781:
        return "cloud.fog"
    case 800:
        return "sun.max"
    case 801...804:
        return "cloud.bolt"
    default:
        return "cloud"
    }
}



/* Custom Type Extensions */
extension Double {
    func round(to places: Int) -> Double{
        let precisionNumber = pow(10, Double(places))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}
var myDouble = 3.141592
var myRoundedDouble = String(format:"%.1f", myDouble)
print(myRoundedDouble)
myDouble.round(to: 2)

extension UIButton {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width/2
    }
}
let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red
button.makeCircular()



/* For Loop */
let fruits: Set = ["Apple","Pear","Orange"]  //not Array, Set is not ordered
let contacts =  ["Adam": 12345679, "James": 359233, "Sam":5959595955 ]
let word = "asjdflkasjdlfkbbbbbb"
let halfOpenRange = 1..<5
let closedRange = 1...5

//Random result for SET
for fruit in fruits {
    print(fruit)
}
for person in contacts {
    print("\(person.key) \(person.value)")
}
for num in halfOpenRange {  // 1..<5
    print(num)              //print: 1,2,3,4
}
for _ in closedRange {
    print("hi")  // 5times
}
for i in 0..<5 {
    print(i)
}

/* while loop */  ///Don't do this
//var now = Date().timeIntervalSince1970
//let oneSecondFromNow = now + 0.002
//while now < oneSecondFromNow {
//    now = Date().timeIntervalSince1970  //update time
//    print("Waiting...")
//}

/* Type Property, Type Method (static in struct)  */
struct MyStructure {
    let instanceProperty = "ABC"
    static let typeProperty = "123"
    func instanceMethod(){
        print("This is instanceMethod()")
    }
    static func typeMethod(){
        print("This is typeMethod()")
    }
}
//able to use, without initializing
MyStructure.typeMethod()
print(MyStructure.typeProperty)

let test = MyStructure()
print(test.instanceProperty)
test.instanceMethod()

//MARK: - as as? as! is Any, AnyObject, NSObject
/* as as? as! is */

class Animal {
    var name: String
    init(n:String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water.")
    }
}

let angela = Human(n: "Angela Yu")
let sam = Human(n: "Han-Saem Park")
let nemo = Fish(n: "Nemo")
let num = 13
let nsword: NSString = "abc"
let nsnum: NSNumber = 15

let neighbours = [angela, sam, nemo]  //different types but the same superclass

// Any, AnyObject, NSObject
let anyNeighbours: [Any] = [angela, sam, nemo, num] // different types
let anyObjectNeighbours: [AnyObject] = [angela, sam, nemo] // any objects from classes (Not structs)
let nsobjectNeighbours: [NSObject] = [nsword, nsnum] //NSObjects


let neighbours1 = neighbours[0] //Human

// is : datatype checker
if neighbours[2] is Human {
    print("First Neighbour is a Human.")
}

// as! : Forced Down Casting
func findNemo(from animals: [Animal]){
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            let fish = animal as! Fish //Forced Down Casting (Animal -> Fish)
            fish.breatheUnderWater()
// as : Up Casting to superclass,
            let animalFish = fish as Animal // Up Casting, to superclass (Fish -> Animal)
        }
    }
}
findNemo(from: neighbours)

//let fish = neighbours[1] as! Fish   // Not able to downcasting! (Human -> Fish)
// as? : Safe Down Casting, try to downcast without error
let fish = neighbours[1] as? Fish
fish?.breatheUnderWater()

if let fish = neighbours[1] as? Fish { // able to cast?
    fish.breatheUnderWater()
} else {
    print("Casting has failed")
}


// MARK: - 1. UserDefaults Explained

// Don't use it as a Database
// It takes timeconsuming process
// Key-value pair
let defaults = UserDefaults.standard    // SINGLETON !! Retrieving & Saving in the same file

let dictionaryKey = "myDictionary"

defaults.set(0.24, forKey: "Volume")
defaults.set(true, forKey: "MusicOn")
defaults.set("Angela", forKey: "PlayerName")
defaults.set(Date(),forKey:"AppLastOpenedByUser")
let array = [1,2,3]
defaults.set(array, forKey: "myArray")
let dictionary = ["name": "Angela"]
defaults.set(dictionary, forKey: dictionaryKey)

// --------------------------------------

let volume = defaults.float(forKey: "Volume")
let appLastOpen = defaults.object(forKey: "AppLastOpenedByUser")
let myArray = defaults.array(forKey: "myArray") as! [Int]
let myDictionary = defaults.dictionary(forKey: dictionaryKey)



// MARK: - 2. Swift Singleton Object

/*
// 0. No Singleton
class Car {
    var color = "Red"
}

let myCar = Car()
myCar.color = "Blue"

let yourCar = Car()
print(yourCar.color)
*/


// 1. Singleton
class Car {
    var color = "Red"
    static let singletonCar = Car()   //Make this class Singleton
}

let myCar = Car.singletonCar
myCar.color = "Blue"

let yourCar = Car.singletonCar
print(yourCar.color)   //Blue

class A {
    init() {
        Car.singletonCar.color = "Brown"
    }
}
class B {
    init() {
        print(Car.singletonCar.color) //Brown
    }
}

let a = A()
let b = B()




/* Date() Date to String*/
let now = Date()
let formatter = DateFormatter()
formatter.dateStyle = .short
formatter.timeStyle = .long
let datetime = formatter.string(from: now)
print(datetime)

let calendar = Calendar.current
let hour1 = calendar.component(.hour, from: now)
let minute1 = calendar.component(.minute, from: now)
print(String(format: "%02d:%02d", hour1, minute1))

var today = Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: now)!
let hour2 = calendar.component(.hour, from: today)
let minute2 = calendar.component(.minute, from: today)
print(String(format: "%02d:%02d", hour2, minute2))

let GMT = Double(TimeZone.current.secondsFromGMT())
today += GMT
print(today)


/* Date() String to Date */
print("--------------------------------")

let formatter2 = DateFormatter()
formatter2.dateFormat = "yyyy-MM-dd HH:mm:ss Z"

let day3 = formatter2.date(from: "2020-05-13 00:00:00 +0200")
print(day3!)
// Output: 2020-03-13 12:37:00 +0000

let hour3 = calendar.component(.hour, from: day3!)
let minute3 = calendar.component(.minute, from: day3!)
print(String(format: "%02d:%02d", hour3, minute3))

let date3 = Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: day3!)
print(date3!)
let hour4 = calendar.component(.hour, from: date3!)
let minute4 = calendar.component(.minute, from: date3!)
print(String(format: "%02d:%02d", hour4, minute4))


let testNum = -7200
let GMTString = String(format: "%+05d", Int(testNum/3600)*100)


/* Date Arithmatic */
let date10 = Date()
let date11 = date10 + 3600



/* Get Timezone from time and location */

let formatter5 = DateFormatter()
formatter5.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
var day5 = formatter5.date(from: "2020-10-15 02:55:00 +0900")

let loc = CLLocation.init(latitude: 57.7089, longitude: 11.9746);
let coder = CLGeocoder();
coder.reverseGeocodeLocation(loc) { (placemarks, error) in
    let place = placemarks?.last;
    let locGMT = Double((place?.timeZone?.secondsFromGMT())!) / 3600
    let DLS = place?.timeZone?.isDaylightSavingTime()
    let DLSOffset = Double((place?.timeZone?.daylightSavingTimeOffset(for: day5!))!) / 3600
}

day5! += 3600 * 7  //GMT offset
let hour5 = calendar.component(.hour, from: day5!)
let minute5 = calendar.component(.minute, from: day5!)
print(String(format: "%02d:%02d", hour5, minute5))


/* Tuples */
let tuple1 = ("Angela", 12)
print(tuple1.0)
print(tuple1.1)

let tuple2 = (name: "Angela", age: 12)
print(tuple2.name)
print(tuple2.age)

let tuple3: (name: String, age: Int)
tuple3 = (name: "Angela", age: 12)
