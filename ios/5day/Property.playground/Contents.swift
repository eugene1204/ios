import UIKit

struct Person {
// Stored Property
    var firstName: String{
        willSet { // 값이 바뀌기 전에 출력
            print("willSet: \(firstName) --> \(newValue)")
        }
        didSet { // 값이 바뀌었을떄 출력
            print("didSet: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    // 지금 당장 사용하진 않음!
    lazy var isPopular: Bool = {
        if fullName == "Jay Park"{
            return true
        } else {
            return false
        }
    }()
// computed property
    /*
    var fullName: String {
        get{
        return "\(firstName) \(lastName)"
        }
        
        set{
            if let firstName = newValue.components(separatedBy: " ").first{
                self.firstName=firstName
            }
            
            if let lastName = newValue.components(separatedBy: " ").last{
                self.lastName=lastName
            }
        }
    }
    static let isAllien: Bool = false //type property
}
     
     var person = Person( firstName: "Jason", lastName: "Lee")

     person.firstName
     person.lastName

     person.firstName = "Jim"
     person.lastName = "kim"

     person.fullName
     person.fullName = "Jay Park"

     person.isPopular
*/
    /*
     var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    var fullName -> String {
        return "\(firstName) \(lastName)"
    }*/
    static let isAllien: Bool = false //type property
}
var person = Person( firstName: "Jason", lastName: "Lee")
