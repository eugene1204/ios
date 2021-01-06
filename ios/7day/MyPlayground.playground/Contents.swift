import UIKit

struct PersonStruct {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

class PersonClass {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var PersonStruct1 = PersonStruct(firstName: "Jason", lastName: "Lee")
var PersonStruct2 = PersonStruct1

var PersonClass1 = PersonClass(firstName: "Jason", lastName: "Lee")
var PersonClass2 = PersonClass1

PersonStruct1.firstName="Jay"
PersonStruct1.firstName
PersonStruct2.firstName


PersonClass1.firstName="Jay"
PersonClass1.firstName
PersonClass2.firstName

PersonClass2 = PersonClass(firstName: "BoB", lastName: "Kim")
PersonClass2.firstName
PersonClass1.firstName
