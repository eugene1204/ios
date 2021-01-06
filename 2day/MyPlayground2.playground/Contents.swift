import UIKit
import Foundation
// While
//while 조건{
//    //code
//}

//var i = 0
//while i < 10 {
//    print(i)
//    i += 1
//}

var i = 0
while i < 10 {
    print(i)
//    if i == 5 {
//        break
//    }
    i += 1
}
i = 0
// repeat
repeat{
    print(i)
    i += 1
}while i<10

// example2
var i2 = 10
// 조건 검사를 먼저하고 코드를 수행한다.
while i2 < 10 {
    print(i2)
//    if i2 == 5 {
//        break
//    }
    i2 += 1
}
i2 = 10
// repeat
// 코드를 수행하고 조건을 검사함
repeat{
    print(i2)
    i2 += 1
}while i2<10




// for loop
let closedRange = 0...10
let halfClosedRange = 0..<10 // 0~9까지

var sum = 0
for i in closedRange{ // 0~ 10까지 더하기
    print("--> \(i)")
    sum += i
}

print("--> total sum: \(sum)")

sum = 0
for i in halfClosedRange{ // 0~ 10까지 더하기
    print("--> \(i)")
    sum += i
}

print("--> total sum: \(sum)")

var sinValue:CGFloat = 0
for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

let name = "jason"
// i 를 쓰지 않는경우 _를 이용하여 루프 사용할수있음
for _ in closedRange{
    print("name : \(name)")
}

for i in closedRange{
    if i % 2 == 0 {print("짝수 : \(i)")}
}

for i in closedRange where i % 2 == 0 { // where문은 조건문임
    print("짝수 : \(i)")
}

for i in closedRange{
    // 3을 만나게 되면 3을 출력하지않고 건너뛴다.
    if i == 3 {continue}
    print("--> \(i)")
}

for i in closedRange{
    for j in closedRange{
        print("gugu -> \(i) * \(j) = \(i * j)")
    }
}

// switch문
let num = 10
switch num {
case 0:
    print("--> 0 입니다")
case 10:
    print("--> 10 입니다")
case 1...9:
    print("1~9사이입니다")
default:
    print("--> 나머지 입니다..")
}

let num2 = 20
switch num2 {
case _ where num2 % 2 == 0: // 20으로 나눈 수가 짝수일 때
    print("--> 짝수")
default:
    print("--> 홀수")
}

let coordinate = (x: 0, y: 10)
switch coordinate {
case (0,0):
    print("원점이네요")
//case (_,0):
//    print("x축이네요")
case(let x, 0):
    print("x축이네요, x: \(x)")
case(0, let y):
    print("y축이네요, y: \(y)")
//case (0,_):
//    print("y축이네요")
//case (_,_):
//    print("좌표어딘가")
case(let x, let y):
    print("좌표어딘가, x: \(x), y: \(y)")
case(let x, let y) where x == y:
    print("x,y값이 같음, x: \(x), y: \(y)")

}
