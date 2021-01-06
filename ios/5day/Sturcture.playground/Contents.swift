import UIKit

// 문제: 가장 가까운 편의점 찾기

// 맨처음 시작시.. 코드
/*
// 2_1. structure 사용한 코드
struct Location {
    let x: Int
    let y: Int
}

let store1 = (loc: Location(x: 3, y: 5), name: "gs")
let store2 = (loc: Location(x: 4, y: 6), name: "seven")
let store3 = (loc: Location(x: 1, y: 7), name: "cu")

// 거리 구하는 함수
func distance(current: Location, target: Location) -> Double{
    // 피타고라스
    let distanceX = Double(target.x - current.y)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

// 가장 가까운 스토어 구하해서 프린트하는 함수
// currentLocation : 나의 현재 위치
// stores : 각각의 편의점 위치
func printClosestStore(currentLocation: Location, stores: [(loc: Location , name: String)]){
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    
    for store in stores{
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {closestStoreName = store.name}
    }
    print("Closest store : \(closestStoreName)")
}

// Store Array 세팅, 현재 내위치 세팅
let myLocation = Location(x:2, y:2) // 현재 나의 위치
let stores = [store1, store2, store3] // 편의점 위치

// printClosestStore 함수를 이용해서 현재 가장 가까운 스토어 출력하기
printClosestStore(currentLocation: myLocation, stores: stores)
 */
/*--------------------------------------------------------------------------------------------------*/
/*
// 2_2. structure 사용
struct Location {
    let x: Int
    let y: Int
}
struct Store {
    let loc: Location
    let name: String
}
let store1 = Store(loc: Location(x: 3, y: 5), name: "gs")
let store2 = Store(loc: Location(x: 4, y: 6), name: "seven")
let store3 = Store(loc: Location(x: 1, y: 7), name: "cu")

// 거리 구하는 함수
func distance(current: Location, target: Location) -> Double{
    // 피타고라스
    let distanceX = Double(target.x - current.y)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

// 가장 가까운 스토어 구하해서 프린트하는 함수
// currentLocation : 나의 현재 위치
// stores : 각각의 편의점 위치
func printClosestStore(currentLocation: Location, stores: [Store]){
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    
    for store in stores{
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {closestStoreName = store.name}
    }
    print("Closest store : \(closestStoreName)")
}

// Store Array 세팅, 현재 내위치 세팅
let myLocation = Location(x:2, y:2) // 현재 나의 위치
let stores = [store1, store2, store3] // 편의점 위치

// printClosestStore 함수를 이용해서 현재 가장 가까운 스토어 출력하기
printClosestStore(currentLocation: myLocation, stores: stores)
*/

// 3. Method
// 거리 구하는 함수
func distance(current: Location, target: Location) -> Double{
    // 피타고라스
    let distanceX = Double(target.x - current.y)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

struct Location {
    let x: Int
    let y: Int
    
}
struct Store {
    let loc: Location
    let name: String
    let deliveryRange = 2.0
    
    func isDeliverable(userLoc: Location) -> Bool {
        let distanceToStore = distance(current: userLoc, target: loc)
        return distanceToStore < deliveryRange
    }
}
let store1 = Store(loc: Location(x: 3, y: 5), name: "gs")
let store2 = Store(loc: Location(x: 4, y: 6), name: "seven")
let store3 = Store(loc: Location(x: 1, y: 7), name: "cu")



// 가장 가까운 스토어 구하해서 프린트하는 함수
// currentLocation : 나의 현재 위치
// stores : 각각의 편의점 위치
func printClosestStore(currentLocation: Location, stores: [Store]){
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    var isDeliverable = false
    for store in stores{
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
            isDeliverable = store.isDeliverable(userLoc: currentLocation)
        }
    }
    print("Closest store : \(closestStoreName), isDeliverable \(isDeliverable) ")
}

// Store Array 세팅, 현재 내위치 세팅
let myLocation = Location(x:2, y:2) // 현재 나의 위치
let stores = [store1, store2, store3] // 편의점 위치

// printClosestStore 함수를 이용해서 현재 가장 가까운 스토어 출력하기
printClosestStore(currentLocation: myLocation, stores: stores)

/*
// 1. sturcture, class를 사용하지 않은 코드
// 현재 스토어 위치들
let store1 = (x: 3, y: 5, name: "gs" )
let store2 = (x: 4, y: 6, name: "seven")
let store3 = (x: 1, y: 7, name: "cu")

// 거리 구하는 함수
func distance(current: (x: Int, y: Int), target: (x: Int, y: Int)) -> Double{
    // 피타고라스
    let distanceX = Double(target.x - current.y)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}
 
// 가장 가까운 스토어 구하해서 프린트하는 함수
// currentLocation : 나의 현재 위치
// stores : 각각의 편의점 위치
func printClosestStore(currentLocation: (x: Int, y: Int), stores: [(x: Int, y: Int, name: String)]){
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    
    for store in stores{
        let distanceToStore = distance(current: currentLocation, target: (x: store.x, y: store.y))
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {closestStoreName = store.name}
    }
    print("Closest store : \(closestStoreName)")
}

// Store Array 세팅, 현재 내위치 세팅
let myLocation = (x:2, y:2) // 현재 나의 위치
let stores = [store1, store2, store3] // 편의점 위치

// printClosestStore 함수를 이용해서 현재 가장 가까운 스토어 출력하기
printClosestStore(currentLocation: myLocation, stores: stores)
*/
