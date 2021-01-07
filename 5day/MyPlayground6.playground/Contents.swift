import UIKit

struct Person {
    var firstName: String {
        didSet{ // didSet은 storedproperty에서 사용가능
            // print("didSet: \(oldValue) --> \(firstName)")
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
    var fullName: String { // property
            return "\(firstName) \(LastName)"
    }
//    var fullName() -> String { // method
//            return "\(firstName) \(LastName)"
//    }
    static let isAlien: Bool = false // typeproperty
}

var person = Person(firstName: "sona", LastName: "lee")

person.fullName // property
//person.fullName() // method
