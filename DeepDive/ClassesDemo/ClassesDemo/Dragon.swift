//
//  Dragon.swift
//  ClassesDemo
//
//  Created by yurim on 2020/09/02.
//  Copyright © 2020 yurim. All rights reserved.
//

class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String) {
        print("Says: \(speech)")
    }
    
    override func move() {
        print("Fly forwards.")
    }
    
    override func attack() {
        super.attack()
        print("Spits fire, does 10 damage.")
    }
}
