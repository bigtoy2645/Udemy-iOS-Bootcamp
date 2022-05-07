import UIKit

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away....")
    }
}

class Fish: Animal {
    func breathUnderWater() {
        print("Breathing under water.")
    }
}

let angela = Human(n: "Angela Yu")
let jack = Human(n: "Jack Bauer")
let nemo = Fish(n: "Nemo")
let num: NSNumber = 12
let word: NSString = "abc"

let neighbours = [angela, jack, nemo]
let neighbours2: [Any] = [angela, jack, nemo, num]
let neighbours3: [NSObject] = [num, word]

if neighbours[2] is Human {
    print("First neighbour is a human")
}

func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            let fish = animal as! Fish
            fish.breathUnderWater()
            let animalFish = fish as Animal // Upcasting
        }
    }
}

findNemo(from: neighbours)

//let fish = neighbours[1] as! Fish   // Downcasting Error
if let fish = neighbours[1] as? Fish {
    fish.breathUnderWater()
} else {
    print("Casting has failed")
}

