import UIKit

// 도전과제
// 1. 강의이름, 강사이름, 학생수를 가지는 struct만들기 (lecture)
// 2. 강의 어레이와 강사이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강의 이름으로 강의 찾기

struct lecture{
    var name: String
    var instructor: String
    var numOfStudent: Int
}

// 예를 들어서 강사 kim이 하는 과목은? ios 이런식으로 출력

func f(name: String, lectureA: [lecture]) -> Void {
    var lec = ""
    
    for lecture in lectureA {
        let lecA = lecture.instructor
        if lecA == name {
            lec = lecture.name
            print("\(lec)")
        }
    }
//    let lectureName = lectureA
//        .first {(lecture) -> Bool in
//            return lecture.instructor == name
//    }?.name ?? ""
    
}


let lecture1 = lecture(name: "ios", instructor:"kim" , numOfStudent: 2)
let lecture2 = lecture(name: "android", instructor:"lee" , numOfStudent: 4)
let lecture3 =  lecture(name: "web", instructor:"park" , numOfStudent: 5)

let lectures = [lecture1,lecture2,lecture3]

f(name: "kim", lectureA: lectures)
