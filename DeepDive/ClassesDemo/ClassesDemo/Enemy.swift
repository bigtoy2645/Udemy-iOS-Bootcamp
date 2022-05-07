//
//  Enemy.swift
//  ClassesDemo
//
//  Created by yurim on 2020/09/02.
//  Copyright © 2020 yurim. All rights reserved.
//

// Class와 Struct의 차이
// 1. Class는 상속이 가능하다.
// 2. Class는 초기화 값이 없을 경우 init을 작성해야 한다.
// 3. Class 복사 시 pointer가 복사된다. Struct는 value가 복사된다.
// 4. Struct는 Immutable하다. mutable로 변경하기 위해 mutating을 붙여야 한다.

class Enemy {
    var health: Int
    var attackStrength: Int
    
    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }
    
    func takeDamage(amount: Int) {
        health = health - amount
    }
    
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
}
