import UIKit

func printName() {
    print("My name is ~~")
}

printName()

// param 1개
// 숫자를 받아서 10을 곱해서 출력하낟

func printMultipleOfTen(value: Int){
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 5)

// param 2ro
// 물건 값과 갯수를 받아서 전체 금액을 출력하는 함수
func printTotalPrice(price: Int, count: Int){
    print("total price : \(price * count)")
}
printTotalPrice(price: 1500, count: 5)

// _ : 파라미터 이름을 부여하지 않고 값만 넘기기
func printTotalPrice1(_ price: Int, _ count: Int){
    print("total price : \(price * count)")
}
printTotalPrice1(1500,  5)

func printTotalPrice2(가격 price: Int, 개수 count: Int){
    print("total price : \(price * count)")
}
printTotalPrice2(가격: 1500,  개수: 5)

func printTotalPriceWithDefaultValue(price: Int = 1500, count: Int){
    // default 값 부여가능
    print("total price : \(price * count)")
}

printTotalPriceWithDefaultValue(count: 5)
printTotalPriceWithDefaultValue(price: 1500, count: 5)

func totalPrice(price: Int, count: Int) -> Int { // return type: ->
    let totalPrice = price * count
    return totalPrice
}

let calculatedPrice = totalPrice(price: 10000, count: 77)
calculatedPrice
