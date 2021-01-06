import UIKit

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName : String
    
    init(firstName: String , lastName:String) {
        self.firstName = firstName
        self .lastName = lastName
        
    }
    
    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}

class Student: Person {
    var grades: [Grade] = []
    override init(firstName: String, lastName: String) {
           // Phase1
           super.init(firstName: firstName, lastName: firstName)
           
        
       }
       
       // 파라미터가 너무 많은경우
       convenience init(student: Student) {
        self.init(firstName: student.firstName, lastName:student.lastName )
       }
}

// 학생인데 운동선수
class StudentAthelets: Student{
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]) {
        // Phase1
        self.sports = sports
        super.init(firstName: firstName, lastName: firstName)
        
        // Phase2
        self.train()
    }
    
    // 파라미터가 너무 많은경우
    convenience init(name: String) {
        self.init(firstName: name, lastName: "", sports: [])
    }
    func train() {
        trainedTime += 1
    }
}

// 운동선수인데 축구선수
class FootballPlayer: StudentAthelets{
    var footballTeam = "FC Swift"
    
    override func train() {
        trainedTime += 2
    }
}

//Person > Student > StudentAthelets > Football Player

let student1 = Student(firstName: "Jason", lastName:"Lee")
let student1_1 = Student(student:student1)
let student2 = StudentAthelets(firstName: "jay", lastName:"kim", sports: ["Football"])
let student3 = StudentAthelets(name: "Mike")
