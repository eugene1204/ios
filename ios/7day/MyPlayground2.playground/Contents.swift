import UIKit
/*
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

class Student {
    var grade: [Grade] = []
    
    var firstName: String
    var lastName: String
    
    init(firstName:String, lastName:String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName()  {
        print("MyName is \(firstName) \(lastName)")
    }
}
*/

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
}

let jay = Person(firstName: "Jay", lastName: "Lee")
let jason = Student(firstName: "Jasson", lastName: "Lee")

jay.firstName
jason.firstName

let math = Grade(letter: "B", points: 8.5, credits: 3)
let history = Grade(letter: "A", points: 10.0, credits: 3)
//jason.grades.append(math)
//jason.grades.append(history)
//jay.grades

jason.grades.count

// 학생인데 운동선수
class StudentAthelets: Student{
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    
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

var athelete1 = StudentAthelets(firstName: "Yuna", lastName: "Kim")
var athelete2 = FootballPlayer(firstName: "Heung", lastName: "Son")

athelete1.firstName //Yuna
athelete2.firstName //Heung

athelete1.grades.append(math)
athelete2.grades.append(math)

athelete1.minimumTrainingTime
athelete2.minimumTrainingTime

//athelete1.footballTeam //athelete1은 FootballPlayer에 접근할 수 없음
athelete2.footballTeam

athelete1.train()
athelete2.trainedTime

athelete2.train() //overriding 했기에 +2값으로 나온다
athelete2.trainedTime

// uppercasting
athelete1=athelete2 as StudentAthelets
athelete1.train()
athelete1.trainedTime

// downcasting
if let son = athelete1 as? FootballPlayer{
    print("--> team: \(son.footballTeam)")
}
