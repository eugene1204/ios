import UIKit

var carName: String? // 값이 있을수도 있고 없을수도있어
carName = nil
carName = "dd"

// 아주 간단한 과제
// 최애 영화배우의 이름을 담는 변수를 작성하기 String
// let num= Int("10") -> int

var str2:String? = "신해선"

// 고급기능 4가지
// 1. Forced unwrapping
// 2. Optional binding(if let)
// 3. Optional binding(guard)
// 4. Nill coalescing


// 1. 억지로 박스를 까보기
// 2. 부드럽게 박스를 까보자 1
// 3. 부드럽게 박스를 까보자 2
// 4. 박스를 까봤더니 값이 없으면 디폴트 값을 주자


if let unwrappedCarName = carName{
    print(unwrappedCarName)
} else {
    print("Car Name No")
}

// 2. 부드럽게 박스를 까보자 1
// 단, 코드 복잡성이 높아 질 수 있다.
/*
func printParsedInt(from: String){
    if let parsedInt = Int (from){
        print(parsedInt)
        // Cycleomatic Complexity
    }else {
        print("No~~~")
    }
}
 */

// 3. 부드럽게 박스를 까보자 2
// guard를 넘겨야 print(parsedInt)를 출력할 수 있다.
func printParsedInt(from: String){
    guard let parsedInt = Int(from) else {
        print("No~~~")
        return
    }
    print(parsedInt)
}

printParsedInt(from: "hello myname is!")

// 4. 박스를 까봤더니 값이 없으면 디폴트 값을 주자
let myCarName: String = carName ?? "모델 s"
// carName이 nil이면 모델 s를 디폴트로 넣어주자~
