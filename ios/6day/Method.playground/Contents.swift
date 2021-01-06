import UIKit

struct Lecture {
    var title: String
    var maxStudent: Int = 10
    var numOfRegistered: Int = 0
    
    //method
    func remainSeats(of lec: Lecture) -> Int {
    let remainSeats = lec.maxStudent - lec.numOfRegistered
    return remainSeats
        
    }
    
    mutating func register() {
        // 등록된 학생수 증가 시키기
        numOfRegistered += 1 // struct의 변수를 변경시키는 코드 -> mutating 삽입 필요
    }
    
    // type property
    static let target: String = "Anybody want to learn Something"
    
    // type method
    static func 소속학원이름() -> String {
        return "패캠"
    }
    
}

var lec = Lecture(title: "ios Basic")
/*
func remainSeats(of lec: Lecture) -> Int {
    let remainSeats = lec.maxStudent - lec.numOfRegistered
    return remainSeats}
*/
 
struct Math{
    static func abs(value: Int) -> Int{
        if value > 0 {
            return value
        }else {
            return -value
        }
    }
}

// 제곱, 반값
extension Math{
    static func square(value: Int) -> Int {
        return value*value
    }
    
    static func half(value: Int)  -> Int {
        return value/2
    }
}

Math.square(value: 3)
Math.half(value: 4)

var value: Int = 3
// 제곱, 반값

// swift에서 정의된 struct도 extension 가능
extension Int {
    func square() -> Int {
        return self * self
    }
    
    func half()  -> Int {
        return self / 2
    }
}

value.square()
value.half()
