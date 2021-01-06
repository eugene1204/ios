import UIKit

// Dictionary 사용하는 방법
var scoreDic: [String: Int] = ["jason": 80, "Jay": 95, "jake":90]
var scoreDic2: Dictionary <String , Int> = ["jason": 80, "Jay": 95, "jake":90]

scoreDic["jason"]
scoreDic["Jay"]
scoreDic["Jerry"] // 값이 없으면 nil

scoreDic.isEmpty //false
scoreDic.count //3

// update
scoreDic["jason"] = 99 //99
scoreDic

//add
scoreDic["Jack"] = 100
scoreDic

// remove
scoreDic["Jack"] = nil
scoreDic

// for loop
for (name, score) in scoreDic {print("\(name), \(score)")}

// 키만보기
for key in scoreDic.keys {print(key)}

// 도전과제

// 1. 이름, 직업, 도시에 대해서 본인의 딕셔너리 만들기
// 2. 여기서 도시를 부산으로 업데이트하기
// 3. 딕셔너리를 받아서 이름과 도시 프린트하는 함수 만들기

var dic: [String: String] = ["name" : "eugene", "jab": "student", "city": "seoul"]
dic["city"] = "busan"
func p(dic : [String: String]) {
    if let name = dic["name"] , let city = dic["city"]{
        print(name, city)}
    else{
        print("no item")
    }
}
