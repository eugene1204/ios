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
    
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    
    convenience init(student: Student) {
        self.init(firstName:student.firstName, lastName: student.lastName )
    }
}

// 학생인데 운동선수
class StudentAhelete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports:[String]
    
    init(firstName: String, lastName: String, sports: [String]) {
        // Phase1
        self.sports = sports
//        self.train() // Phase1이 끝나기전에 Phase2 실행 요청!!! error
        super.init(firstName: firstName, lastName: lastName)
        
        // Phase2
        self.train()
    }
    
    convenience init(name: String) {
        self.init(firstName: name, lastName: "", sports: [])
    }
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

let student1 = Student(firstName: "jason", lastName: "lee")
let student1_1 = Student(student: student1)
let student2 = StudentAhelete(firstName: "jay", lastName: "lee", sports: ["football"])
let student3 = StudentAhelete(name: "Mike")
