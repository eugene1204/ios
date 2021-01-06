import UIKit

//func functionName(param: ParamType) - > Return Type {
//    ..
//    return returnValue
//}

// 오버로드

func printTotalPrice(price: Int, count: Int){
    print("Total Price: \(price * count)")
}

func printTotalPrice(price: Double, count: Double){
    print("Total Price: \(price * count)")
}

func printTotalPrice(가격: Double, 갯수 : Double){
    print("Total Price: \(가격 * 갯수)")
}

// In-out paramter
// 일반적인 파라미터는 constant로 값을 변경할 수 없음
// 값을 변경하고 싶으면 inout 사용해야함
var value = 3
func incrementAndPrint(_ value: inout Int){ // value로 받은 값을 복사하여 값을 변경함
    // _ value는 constant
    value += 1
    print(value)
}
incrementAndPrint(&value)

// Function as a param
func add(_ a: Int, _ b: Int) -> Int {
    return a+b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a-b
}

var function = add
function(4,2)
function = subtract
function(4,2)

func printResult(_ function:(Int, Int) -> Int , _ a: Int, _ b: Int){
    let result = function(a,b)
    print(result)
}

// add 함수를 파라미터로 받음
printResult(add, 10, 5)
// subtract 함수를 파라미터로 받음
printResult(subtract , 10, 5)
