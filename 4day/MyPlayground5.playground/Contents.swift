import UIKit

// Example 1: cho Simple Closure
let choSimpleClosure = {}
choSimpleClosure()

// Example 2: 코드 블록을 구현한 Closure
let choSimpleClosure2 = {print("Hello")}
choSimpleClosure2()

// Example 3: 인풋 파라미터를 받는 Closure
let choSimpleClosure3 : (String) -> Void = { name in
    print("my name is \(name)")
}
choSimpleClosure3("eugene")

// Example 4: 값을 리턴하는 Closure
let choSimpleClosure4 : (String) -> String = { name in
    let message = "hello hello \(name)"
    return message
}
let result = choSimpleClosure4("eugene")
print(result)

// Example 5: Closure를 파라미터로 받는 함수 구현
func someSimpleFunction(c: () -> Void){
    print("함수 호출완")
    c() // 함수 호출완2 출력
}

someSimpleFunction(c:{print("함수 호출완2")})

// Example 6: Trailing Closure
// 인자중에 closure가 마지막일경우 사용함
func someSimpleFunction2(message: String, c: () -> Void){
    print("\n함수 호출완 \(message)")
    c() // 함수 호출완2 출력
}

someSimpleFunction2(message: "message", c:{print("함수 호출완2")})
//Trailing Closure
someSimpleFunction2(message: "message"){print("함수 호출완2")}
