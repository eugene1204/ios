import UIKit

// multiplyClosure는 파라미터로 Int, Int를 받고 Int를 반환한다.
// 반환하는 Int는 a*b 형태로 반환함
var multiplyClosure: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in return a * b}
var multiplyClosure2: (Int, Int) -> Int = {a, b -> Int in return a * b}
var multiplyClosure3: (Int, Int) -> Int = {a, b in return a * b}
var multiplyClosure4: (Int, Int) -> Int = {$0 * $1}

let result = multiplyClosure4(4,3)
// 동적으로 operation에 들어갈 내용을 정할수 있음
// func이 closure를 받는 예제
// operateTwoNum는 파라미터 값으로 a,b를 받고 Int를 반환한다.
// operate는 앞에서 받은 두 파라미터를 이용해서 int로 반환한다.
// let result 변수를 통해 closure인 operation을 이용하여 계산하고
// 함수 operateTwoNum는 result를 반환
func operateTwoNum(a: Int, b:Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a,b)
    return result
}

operateTwoNum(a: 3, b: 4, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = {a,b in return a + b}

operateTwoNum(a: 3, b: 4, operation: addClosure)

operateTwoNum(a: 4, b: 2) { (a, b) -> Int in
    return 4 / 2
}

let voidClosure: () -> Void = {print("hi")}
voidClosure()

// Capturing Value

var count = 0
var incrementer = {count += 1 }

incrementer
incrementer
incrementer
incrementer

count

