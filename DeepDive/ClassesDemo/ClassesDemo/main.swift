//
//  main.swift
//  ClassesDemo
//
//  Created by yurim on 2020/09/02.
//  Copyright © 2020 yurim. All rights reserved.
//

import Foundation

var skeleton1 = Enemy(health: 100, attackStrength: 10)
var skeleton2 = skeleton1

skeleton1.takeDamage(amount: 10)
skeleton1.takeDamage(amount: 10)
skeleton2.takeDamage(amount: 10)

print(skeleton1.health)
print(skeleton2.health)

let dragon = Dragon(health: 100, attackStrength: 15)
dragon.attackStrength = 15
dragon.talk(speech: "aaa")
dragon.move()
dragon.attack()
