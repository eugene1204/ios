import UIKit

// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기
// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기
// 3. 성, 이름을 받아서 fullname을 return 하는 함수 만들기

func fullname(first: String, last: String){
    let fullname = "\(first)+\(last)"
    print("\(fullname)")
}

func fullname2(_ first: String, _ last: String){
    let fullname = "\(first)+\(last)"
    print("\(fullname)")
}

func fullname3(_ first: String, _ last: String) -> String{
    let fullname = "\(first)+\(last)"
    return fullname
}
