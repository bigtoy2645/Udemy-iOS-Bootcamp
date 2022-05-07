//
//  main.swift
//  OptionalsDemo
//
//  Created by yurim on 2020/09/07.
//  Copyright © 2020 yurim. All rights reserved.
//
// Optional 처리 방법

import Foundation

let myOptional: String?

myOptional = "Angela"

// 1. Force Unwrapping : 강제 추출
let text1: String = myOptional!

// 2. Check for nil value
if myOptional != nil {
    let text2: String = myOptional!
    print(text2)
} else {
    print("myOptional was found to be nil.")
}

// 3. Optional Binding
if let text3 = myOptional {
    print(text3)
} else {
    print("myOptional was found to be nil.")
}

// 4. Nil Coalescing Operator : ?? nil이면 다른 값 사용
let text4: String = myOptional ?? "Default Value"
print(text4)

// 5. Optional Chaining
struct optionalStruct {
    var property = 123
    func method() {
        print("Struct Method")
    }
}

let myOpt: optionalStruct?

myOpt = optionalStruct()

print(myOpt?.property)
