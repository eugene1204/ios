import UIKit

// 문제: 가장 가까운 편의점 찾기

// 맨 처음 시작시... 코드
struct Location {
    let x: Int
    let y: Int
}

struct Store{
    let loc: Location
    let name: String
    let deliveryRange = 2.0
    
//    func isDeliverable(userLoc: Location) -> Bool {
//        let distance
//    }
}
let store1 = Store(loc: Location(x:3, y:5), name: "gs")
let store2 = Store(loc: Location(x:4, y:6), name: "seven")
let store3 = Store(loc: Location(x:1, y:7), name: "cu")

// 거리구하는 함수
func distance(current: Location, target: Location) -> Double {
    // 피타 고라스
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

// 가장 가까운 스토어 구해서 프린트하는 함수
func printClosestStore(currentLocation: Location, stores:[Store]){
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    
    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {closestStoreName = store.name}
    }
    print("Closest store: \(closestStoreName)")
}

//stores arrary 세팅,  현재 내 위치 세팅
let myLocation = Location(x:2, y:2)
let stores = [store1, store2, store3]

// printClosestStore 함수를 이용하여 현재 가장 가까운 스토어 출력하기
printClosestStore(currentLocation:myLocation, stores: stores)
