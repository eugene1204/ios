import UIKit

/*
var multiplyclosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a * b
}
 */
var multiplyclosure: (Int, Int) -> Int = {
    return $0 * $1
}

// func은 두수와 연산하는 연산자를 받는다
// operation은 int를 반환하고 함수는 int를 반환한다
func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int{
    let result = operation(a,b)
    return result
}
 
operateTwoNum(a: 4, b: 2, operation: multiplyclosure)

var addClosure: (Int, Int) -> Int = { a, b in return a+b}

operateTwoNum(a: 4, b: 2, operation: addClosure)

operateTwoNum(a: 4, b: 2) { a, b in return a / b}

let voidClosure: () -> Void = {
    print("hihi")
}

voidClosure()

//Capturing Value

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()
