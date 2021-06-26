import Foundation

var pizzaInInches: Int = 16 {
    willSet {
        print("PizzaInInches's newValue is \(newValue)")
    }
    didSet {
        print("PizzaInInches's oldValue is \(oldValue)")
        if pizzaInInches >= 18 {
            print("Invalid size specified, pizzaInInches set to 18.")
            pizzaInInches = 18
        }
    }
}

pizzaInInches = 20

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
    set {
        print("numberOfSlices now has a new value which is \(newValue)")
    }
}

var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizza = 4   // 피자 4판 = 12조각 * 4판 = 1인당 4조각 -> 12명이 먹을 수 있음.

print(numberOfPeople)

// MARK: - Advanced Properties Challenge

var width: Float = 1.5
var height: Float = 2.3

var bucketsOfPaint: Int {
    get {
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceilf(numberOfBuckets)
        return Int(roundedBuckets)
    }
    set {
        let areaCanCover = Double(newValue) * 1.5
        print("This amount of paint can cover an area of \(areaCanCover)")
    }
}

print(bucketsOfPaint)

bucketsOfPaint = 4
