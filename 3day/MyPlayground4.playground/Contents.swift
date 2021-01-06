import UIKit

var carName: String?//
carName = nil
carName = "탱크"

// 아주 간다한 과제
// 여러분이 최애하는 영화배우 이름을 담는 변수를 작성해라 (타입 String?)
var name: String?
name = nil
// let num = Int("10") -> 타입은 무엇일까요?
let num = Int("10") // int 10으로 변환가능
let num2 = Int("1sd0") // nil Int로 변환 불가

// 고급 기능 4가지

// forced unwrapping
// optional binding (if let)
// optional binding (guard)
// Nil coalescing

// forced unwrapping > 억지로 박스를 까기
// optional binding (if let) > 부드럽게 박스를 까보자 1
// optional binding (guard) > 부드럽게 박스를 까보자 2
// Nil coalescing > 박스를 까봤더니, 값이 없으면 디폴드 값을 주기

// forced unwrapping > !을 이용해서 오픈하기
// 값이 없는데 박스를 열기 불가능
print(carName!)

// optional binding (if let)
if let unwrappedCarName = carName {
    // carName이 있으면 실행
    print(unwrappedCarName)
} else {
    print("Car Name 없음")
}

func printParsedInt(from: String){
    if let parsedInt = Int(from){
        print(parsedInt)
    } else {
        print("Int parsed no")
    }
}
printParsedInt(from: "100") // parsed ok
printParsedInt(from: "hello") //nil

// optional binding (guard)
// cyclematic complexity가 높을 경우 사용한다.
func printParsedInt2(from: String){
    guard let parsedInt2 = Int(from) else {
        print("Int parsed no")
        return
    }
        print(parsedInt2)
}
printParsedInt2(from: "100")
printParsedInt2(from: "100ddd")

// Nil coalescing
// mycarName값이 없다면 모델 s를 디폴트로 준다.
let myCarName: String = carName ?? "모델 s"
