import UIKit

struct Lecture {
    var title: String
    var maxStudent: Int = 10
    var numOfRegistered: Int = 0
    func remainSeats() -> Int {
        let remainSeats = lec.maxStudent - lec.numOfRegistered
        return remainSeats
    }
    
    mutating func register() {
        // 등록된 학생수 증가시키기
        numOfRegistered += 1
    }
    
    // type property
    static let target: String = "Anybody want to learn something"
    static func 소속학언이름() -> String{
        return "gkgk"
    }
}

var lec = Lecture(title: "ios basic")

//func remainSeats(of lec: Lecture) -> Int {
//    let remainSeats = lec.maxStudent - lec.numOfRegistered
//    return remainSeats
//}

//remainSeats(of: lec)

lec.remainSeats()

lec.register()
lec.register()
lec.register()

lec.remainSeats()
Lecture.target
Lecture.소속학언이름()

struct Math {
    static func abs(value: Int) -> Int{
        if value > 0 {
            return value
        }else {
            return -value
        }
    }
}

Math.abs(value: -20)


// extension struct 확장
extension Math{ // 제곱
    static func square(value: Int) -> Int{
            return value * value
    }
}
// 제곱
var vaule: Int = 4

extension Int { // 이미 애플에서 만든 int에 내가 원하는 메소드 추가가능하다.
    func squre() -> Int {
        return self * self
    }
}

vaule.squre()
