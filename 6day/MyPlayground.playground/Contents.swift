import UIKit

struct PersonStruct {
    var firstName: String
    var lastName: String
    
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName(){
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

class PersonClass {
    var firstName: String
    var lastName: String
    
    // 생성자
    init(firstName: String, lastName:String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    // class에서는 mutating쓰지 않음@@@@
    func uppercaseName(){
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }

}

var personStruct = PersonStruct(firstName: "jason", lastName: "lee")
var personStruct2 = personStruct

var personClass = PersonClass(firstName: "jason", lastName: "lee")
var personClass2 = personClass

personStruct2.firstName = "jay"
personStruct.firstName
personStruct2.firstName

personClass2.firstName = "jay"
personClass.firstName
personClass2.firstName

personClass2 = PersonClass(firstName: "bob", lastName: "lee")
personClass.firstName
personClass2.firstName

personClass = personClass2
personClass.firstName
personClass2.firstName
