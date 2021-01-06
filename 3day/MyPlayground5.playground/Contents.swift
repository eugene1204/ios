import UIKit

// 도전과제
// 1. 최애 음식이름을 담는 변수를 작성하시고 (String?)
// 2. 옵셔널 바인딩을 이용해서 값을 확인해보기
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?

var food:String?
food = "d"

print(food!)

if let foodname = food {
    print(foodname)
}else {
    print("no food")
}

let f : String = food ?? "dd"

func nickname(from: String?){
    guard let nick = from else{
        print("no nick")
        return
    }
    print("\(nick)")
}
nickname(from: "hh")
