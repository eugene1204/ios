import UIKit
import Foundation
//var str = "Hello, playground"

//while
// while 조건{
//code
//}

//var i=0
//while i<10{
//    print(i)
//    i+=1
//}
/*
var i=0
while i<10{
    print(i)
    if i==5{break}
    i+=1
}
*/
// 조건을 먼저보고 코드 수행을 먼저

print("repeat")
var i=10
repeat{
    print(i)
    i+=1
}
    while i<10

// 코드 수행먼저 다음 조건을 확인하기


//for loop

let closedRange=0...10
let halfClosedRange=0..<10


var sum=0
for i in closedRange{
    print("-->\(i)")
    sum+=1
}
print("-->\(sum)")

var sinValue:CGFloat=0
for i in closedRange{
    sinValue=sin(CGFloat.pi/4*CGFloat(i))
    
}

let name="Jason"
for _ in closedRange{
    print("name \(name)")
}

for i in closedRange{
    if i % 2==0{
        print("--> 짝수 \(i)")
    }
}

for i in closedRange where i % 2 == 0{
    print("--> 짝수 \(i)")
}

for i in closedRange{
    if i==3{
        continue
        // i가 3일 경우 건너 뛴다
    }
    print("--> \(i)")
}

for i in closedRange{
    for j in closedRange{
        print("gugu -> \(i) * \(j)=\(i * j)")
    }
}

// switch
let num = 20

switch num {
case 0:
    print("0")
case 0...10:
    print("0~10 사이 입니다")
case 10:
    print("10")
default:
    print("none")
}

let pet = "bird"

switch pet {
case "dog", "cat", "bird":
    print("집 동물")
default:
    print("잘 모르겟습니다")
}

let num2=20
switch num2 {
case _ where num2 % 2 == 0:
    print("짝수")
default:
    print("홀수")
}

let coordinate = (x:0, y:10)

switch coordinate {
case(0,0):
    print("0")
case(_,0):
    print("0")
case(0,_):
    print("0")
case(let x, 0):
    print("x:\(x)")
case(let x, let y)where x==y:
    print("x==y x,y = \(x) , \(y)")
case(0,let y):
    print("y: \(y)")
default:
    print("0")
}
