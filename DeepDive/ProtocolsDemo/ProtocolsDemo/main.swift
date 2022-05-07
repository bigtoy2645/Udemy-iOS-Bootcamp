//
//  main.swift
//  ProtocolsDemo
//
//  Created by yurim on 2020/09/21.
//  Copyright © 2020 yurim. All rights reserved.
//

import Foundation

protocol Canfly {
    func fly()
}

extension Canfly {
    func fly() {
        print("The object takes off into the air.")
    }
}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in s shell.")
        }
    }
}

class Eagle: Bird, Canfly {
    // extension 에서 구현했기 때문에 필요 없음.
//    func fly() {
//        print("The bird flaps its wings and lifts off into the sky.")
//    }
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: Canfly) {
        flyingObject.fly()
    }
}

class Airplane: Canfly {
    // extension 에서 구현했기 때문에 필요 없음.
//    func fly() {
//        print("The airplane uses its engine to lift off into the air.")
//    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let museum = FlyingMuseum()
let myPlane = Airplane()

//museum.flyingDemo(flyingObject: myPlane)
myPlane.fly()
