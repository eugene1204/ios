import UIKit

struct Grade{
    var letter: Character
    var points: Double
    var credits: Double
    
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() -> Void {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
    var grades: [Grade] = []
//    person에 있음
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() -> Void {
//        print("My name is \(firstName) \(lastName)")
//    }
}

let jay = Person(firstName: "jay", lastName: "lee")
let jason = Student(firstName: "jason", lastName: "lee")

jay.firstName
jason.firstName

jay.printMyName()
jason.printMyName()

let math = Grade(letter: "B", points: 8.5, credits: 3)
let history = Grade(letter: "A", points: 10.0, credits: 3)
jason.grades.append(math)
jason.grades.append(history)
// jay.grades
jason.grades.count

// 학생인데 운동선수
class StudentAhelete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    
    func train() -> Void {
        trainedTime += 1
    }
}

// 운동선수인데 축구성수
class FootballPlayer: StudentAhelete {
    var footballTeam = "FC Swift"
    
    override func train() {
        trainedTime += 2
    }
}

// Person > Student > Athelete > Football Player

var athelet1 = StudentAhelete(firstName: "yuna", lastName: "kim")
var athelet2 = FootballPlayer(firstName: "heung", lastName: "son")

athelet1.firstName
athelet2.firstName

athelet1.grades.append(math)
athelet2.grades.append(math)

athelet1.minimumTrainingTime
athelet2.minimumTrainingTime

//athelet1.footballTeam
athelet2.footballTeam

athelet1.train()
athelet1.trainedTime

athelet2.train()
athelet2.trainedTime

//upper casting
athelet1 = athelet2 as StudentAhelete

athelet1.train()
athelet1.trainedTime
//athelet1.footballTeam

//down casting
if let son = athelet1 as? FootballPlayer{
    print("--> team: \(son.footballTeam)")
}
