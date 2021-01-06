import UIKit

var scoreDic: [String:Int] = ["Jason": 80, "jay": 95, "jake": 90]
//var scoreDic2: Dictionary<String,Int> = ["Jason": 80, "jay": 95, "jake": 90]

scoreDic["Jason"] // 안정적이진 않아!!

// 안정적인 방법 1
let scoreDic1 = scoreDic["Jason"]

// 안정적인 방법 2
if let score = scoreDic["Jason"]{
   score
}else {
    // 값이 존재하진 않아잉
}

scoreDic["Jerry"]

scoreDic = [:]
scoreDic.isEmpty
scoreDic.count

scoreDic["Jason"] = 99 // update

scoreDic["Jack"] = 100 // add

scoreDic["Jack"] = nil // remove

// For Loop
for (name, score) in scoreDic {
    print("\(name), \(score)")
}

for key in scoreDic.keys {
    print(key)
}

var a: [String:String] = ["name":"eugene","job":"student","city":"seoul"]
a["job"]="Busan"
func p(dic: [String: String]) {
    if let name = dic["name"], let city = dic["city"]{
        print(name,city)
    }
}


