import UIKit
// 이게 주석이야~
var str = "Hello, playground"

let value = arc4random_uniform(100)
print("--> \(value)")

// tuple
let coordinates = (4,6)
let x = coordinates.0 // 4
let y = coordinates.1 // 6

// 명시적으로 표현
let coornidateNamed = (x:2, y:3)
let x2 = coornidateNamed.x
let y2 = coornidateNamed.y

let(x3, y3) = coornidateNamed
x3
y3

// Boolean - true or false
let yes = true
let no = false

let isFourGeaterThanFive = 4>5 //false

if isFourGeaterThanFive{
    print("--> 참")
}else {
     print("--> 거짓")
}

// if 조건..... { 조건이 참인경우에 수행하는 코드} else {그렇지 않을 경우의 코드 }

let a = 5
let b = 10

if a>b { print("--> a가 크다")}
else { print("--> b가 크다")}

let name1 = "jin"
let name2 = "jason"

// 이름이 같은지 아닌지 판단
let isTwoNameSame = name1 == name2 //false

if isTwoNameSame {
     print("--> 참")
}else { print("--> 거짓")}

// 논리 연산자 - and or
let isJason = name2 == "jason" // true
let isMale = true
let jasonAndMale = isJason && isMale //true
let jasonOrMale = isMale || isJason //true

if isJason{print("Hello Jason")}
else {print("Hello Somebody")}

// 삼항 연산자
// isJason이 true이면 Hello Jasond을, false이면 Hello Somebody를 반환한다.
let greetingMessage: String = isJason ? "Hello Jason" : "Hello Somebody"
print("Msg: \(greetingMessage)")

// Scope- 코드안에 있는 블록
var hours = 50
let payPerHour = 10000
var salary = 0

if hours > 40 {// scope 시작
    //scope
    //extraHours는 scope안에서만 사용가능함
    let extraHours = hours - 40
    salary += extraHours * payPerHour * 2
    hours -= extraHours
    
}//scope끗
// print(extraHours)
salary += hours * payPerHour
