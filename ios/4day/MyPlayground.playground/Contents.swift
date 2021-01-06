import UIKit

func one(first: String, last: String){
    print("name: \(first) \(last)")
}


func two(_ first: String, _ last: String){
    print("name: \(first) \(last)")
}

func three(first: String, last: String)->String{
    return "\(first) \(last)"
}
