import UIKit

let fruits: Array = ["Apple", "Pear", "Orange"]     // 순서대로 출력됨.
let fruitsSet: Set = ["Apple", "Pear", "Orange"]    // 순서되로 출력 안됨.
let contacts = ["Adam": 123456789, "James": 987654321, "Amy": 912837454]    // 순서대로 출력 안됨.
let word = "supercalifragilistdkdksad"
let halfOpenRange = 1..<5
let closedRanged = 1...5

for _ in halfOpenRange {
    print("Loop running")
}

var now = Date().timeIntervalSince1970
let oneSecondFromNow = now + 1

//while now < oneSecondFromNow {
//    now = Date().timeIntervalSince1970
//    print("waiting")
//}

class Assignment {
    
    func fibonacci(n: Int) {
    
        var numbers: [Int] = [0, 1]
        
        if n == 0 {
            print(0)
        } else if n == 1 {
            print(0, 1)
        } else {
            // 5 -> [0, 1, 1, 2, 3]
            for index in 2..<n {
                let nextValue = numbers[index-1] + numbers[index-2]
                numbers.append(nextValue)
            }
            print(numbers)
        }
    }
}

let fibo = Assignment()
fibo.fibonacci(n: 5)
fibo.fibonacci(n: 10)
