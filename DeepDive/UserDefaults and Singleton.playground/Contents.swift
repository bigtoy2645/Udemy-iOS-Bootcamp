import UIKit

// MARK: - UserDefaults

let defaults = UserDefaults.standard

defaults.set(0.24, forKey: "Volume")
defaults.set(true, forKey: "MusicOn")
defaults.set(Date(), forKey: "AppLastOpenedByUser")
let array = [1, 2, 3]
defaults.set(array, forKey: "myArray")
let dictionary = ["name" : "Yurim"]
defaults.set(dictionary, forKey: "myDic")

let volume = defaults.float(forKey: "Volume")
let appLastOpen = defaults.object(forKey: "AppLastOpenedByUser")
let myArray = defaults.array(forKey: "myArray") as! [Int]
let myDictionary = defaults.dictionary(forKey: "myDic")

// MARK: - Singleton

class Car {
    var colour = "Red"
    
    static let singletonCar = Car()
}

let myCar = Car.singletonCar
myCar.colour = "Blue"

let yourCar = Car.singletonCar
print(yourCar.colour)

class CarA {
    init() {
        Car.singletonCar.colour = "Brown"
    }
}

class CarB {
    init() {
        print(Car.singletonCar.colour)
    }
}

