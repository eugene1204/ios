import UIKit

//var str = "Hello, playground"

func printName(){
    print("my name is eugene")
}
printName()

// param 1개
// 숫자를 받아서 10을 곱해서 출력한다

func printMultipleOfTen(value:Int){
    print("\(value)*10 = \(value*10)")
}
printMultipleOfTen(value:10)

// param 2개
// 물건 값과 갯수를 받아서 전체 금액을 출력하는 함수
func printTotalPrice(price:Int,count:Int){
    print("Total Price: \(price*count)")
}
printTotalPrice(price:1500, count:5)

/*
func priceTotalPrice(_ price : Int, _ count: Int){
    print("Total Price: \(price*count)")
}
printTotalPrice(1500,5)

func priceTotalPrice(가격 price : Int, 갯수 count: Int){
    print("Total Price: \(price*count)")
}
printTotalPrice(가격:1500, 갯수:5)
*/

// 함수에 디폴트 가격 설정하기

func printTotalPriceWithDefaultValue(price: Int=1500, count: Int){
    print("Total Price: \(price*count)")
}
printTotalPriceWithDefaultValue(count:5)
printTotalPriceWithDefaultValue(count:15)

func totalPrice(price: Int, count:Int)-> Int{
    let totalPrice=price*count
    return totalPrice
}
let calculatePrice = totalPrice(price: 10000, count: 77)
calculatePrice

// 오버로드
func printTotalPrice2(price: Int, count: Int){
    print("Total Price: \(price * count)")
}

func printTotalPrice2(price: Double, count: Double){
    print("Total Price: \(price * count)")
}

// In-out paramter
var value=3
func invrementAndPrint(_ value: inout Int){
        // 파라미터로 들어온 변수를 변경하고싶을때
        // 기본적으로 파라미터는 const로 변경못해
    value=value+1
    print(value)
}
invrementAndPrint(&value)

// Function as a param
func add(_ a: Int, _ b: Int)-> Int{
    return a+b
}

func subtract(_ a: Int, _ b: Int)-> Int{
    return a-b
}

var function = add
function(4,2)
function=subtract
function(4,2)

// 함수에 함수를 파라미터로 보낸다
func printResult(_ function:(Int, Int) -> Int, _ a: Int, _ b: Int)
{
    let result=function(a, b)
    print(result)
}
printResult(add,10,5)
