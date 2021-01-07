import UIKit

struct Person {
    var firstName: String {
        willSet{
            print("didSet: \(firstName) --> \(newValue)")
        }
        
        didSet{ // didSet은 storedproperty에서 사용가능
            print("didSet: \(oldValue) --> \(firstName)")
        }
    }
    var LastName: String
    // lazy property
    // 모든 사용자가 사용하지 않은 프로퍼티 혹은 코스트가 너무 큰경우 필요한 사람들만 쓰도록함
    lazy var isPopular: Bool = {
        if fullName == "jay park"{
            return true
        }else{
            return false
        }
    }()
    var fullName: String {
        get{
            return "\(firstName) \(LastName)"
        }
        
        set{
            if let firstName = newValue.components(separatedBy: " ").first{
                self.firstName = firstName
            }
            
            if let LastName = newValue.components(separatedBy: " ").last{
                self.LastName = LastName
            }
        }
        
    }
    
    static let isAlien: Bool = false // typeproperty
}

var person = Person(firstName: "sona", LastName: "lee")

person.firstName
person.LastName

person.firstName = "jim"
person.LastName = "kim"
person.fullName
person.fullName = "jay park"
person.firstName
person.LastName
Person.isAlien

