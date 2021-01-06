import UIKit

var str = "Hello, playground"
// 이게 플레이 그라운드임!! 이건 주석임
//이것도 주석인!!!!!다다다다ㅏㄷㅇ



// tuple 좌표 만들기
let coordinates=(4,10)
let x=coordinates.0
let y=coordinates.1

let coordinatesNamed=(x:2,y:3)
let x2=coordinatesNamed.x
let y2=coordinatesNamed.y

let(x3,y3)=coordinatesNamed

x3
y3
// Boolean
let yes=true
let no=false

let isFourGreateThanFive=4>5

if isFourGreateThanFive{
    print("t")
}else{
    print("f")
    
}
/*
if 조건...{
    // 조건이 참인경우
    else{
        //조건이 거짓인 경우
}*/
let a=0
let b=1
if a>b{
    print("a가 크다")
}else{
    print("b가 크다")
    
}

let name1="jan"
let name2="jason"

let isTwoNameSname=name1==name2

if isTwoNameSname{
    print("same")
}else{
    print("not same")
    
}

// boolean 추가 개념
let isJason=name2=="jason" //true

let isMale=false

let jasonAndMale=isJason&&isMale //false
let jasonOrMale=isJason||isMale //true

let greetingMessage:String
if isJason{
    greetingMessage="HelloJason"
}else {
    greetingMessage="Hello Somebody"
}
print("Msg: \(greetingMessage)")

let greetingMessage2=isJason?"Hello Jason":"Hello Somebody"
print("Msg: \(greetingMessage2)")

//scope

var hour=50
let payPerHour=10000
var salary=0

if hour>40{
    let extraHours=hour-40
    salary+=extraHours*payPerHour*2
    hour-=extraHours
}
salary+=hour*payPerHour

//print(extraHours)
// extraHour는 if 스콥안에서 사용하는 로컬 변수이므로 외부에서는 사용할 수 없다

