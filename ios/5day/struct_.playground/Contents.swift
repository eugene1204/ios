import UIKit

// 도전 과제
// 1. 강의 이름, 강사 이름, 학생수를 가지는 struct 만들기 (Lecture)
// 2. 강의 Array, 강의이름을 받아서 해당 강사의 강의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사이름으로 강의 찾기

// struct 만들기
struct Lecture{
    let name: String // 강의이름
    let instructor: String // 강사이름
    let numOfStudent: Int // 학생수
}

// 강의 3개 만들기
let a = Lecture(name: "Algorithm", instructor: "kim", numOfStudent: 120)
let b = Lecture(name: "C++", instructor: "Lee", numOfStudent: 100)
let c = Lecture(name: "Java", instructor: "Hong", numOfStudent: 50)
/*
func Instructor(instructor: String, lectures: [Lecture]){ //
    var lecName=""
    
    for lecture in lectures{
        if instructor == lecture.instructor {
            lecName = lecture.name
        }
    }
    print("\(lecName)")
}
*/

func Instructor(instructor: String, lectures: [Lecture]){ //
    let lecName = lectures.first{(lec)-> Bool in
        return lec.instructor == instructor}?.name ?? ""
    //lec. instructor == instructor 인것중에 가장 먼저 나온걸 반환하기
    //찾은건 lectures 중하나임 .name은 lectures의 name을 반환하기
    //만약 없다면(nil) 공백 반환하기
    
    /*let lecName = lectures.first{(lec)-> $0.instructor == instructor}?.name ?? ""*/
    // ?0 -> for문의 역할
    print("\(lecName)")
}
let Lec = [a,b,c] // Lecture

Instructor(instructor: "kim", lectures: Lec)
