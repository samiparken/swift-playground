import Foundation

//MARK: - COMPUTED PROPERTIES

let pizzaInInches: Int = 16

// Computed Property
var numberOfSlices1: Int {
    return pizzaInInches - 4
} // Getter, executed when being accessed
print(numberOfSlices1)
let a = numberOfSlices1 * 2

// Stored Property
var numberOfSlices2: Int = 10
func calcPizzaSlices() {
    numberOfSlices2 = pizzaInInches - 4
}
calcPizzaSlices()
print(numberOfSlices2)

//Getter & Setter
var numberOfSlices3: Int {
    //Getter
    get {
        return pizzaInInches - 4
    }
    //Setter
    set {
        print("numberOfSlice3 now has a new value which is \(newValue)")
    }
}
numberOfSlices3 = 12


var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4
var numberOfPizza: Int {
    get{
        let numberOfPeopleFedPerPizza = numberOfSlices1 / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices1 * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}
print(numberOfPizza)
numberOfPizza = 4
print(numberOfPeople)


//MARK: - OBSERVED PROPERTIES

var pizzaInInches2: Int = 10 {
    // right before it changes
    willSet {
        print(pizzaInInches2) //old
        print(newValue)
    }
    // right after it changes
    didSet {
        print(oldValue)
        print(pizzaInInches2) //new
        
        if pizzaInInches2 >= 18 {
            print("Invalid size specified, pizzaInInches2 set to 18")
            pizzaInInches2 = 18
        }
    }
}

pizzaInInches2 = 8
pizzaInInches2 = 100


//MARK: - Example
var width: Float = 1.5
var height: Float = 2.3

var bucketsOfPaint: Int {
    get{
        let area = width * height
        let areaPerBucket: Float = 1.5
        let neededPaint = area / areaPerBucket
        return Int(neededPaint.rounded(.up))
    }
    set{
        let areaPerBucket: Float = 1.5
        print("\(newValue) bucket(s) can cover \(Float(newValue)*areaPerBucket)sqm.")
    }
}

print(bucketsOfPaint)
bucketsOfPaint = 10

