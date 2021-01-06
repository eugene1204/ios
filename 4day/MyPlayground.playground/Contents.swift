import UIKit

// array사용하는 방법
var evenNumbers: [Int] = [2,4,6,8]
var evenNumbers2: Array<Int> = [2,4,6,8]

evenNumbers.append(10)
evenNumbers += [12,14, 16]
evenNumbers.append(contentsOf: [18, 20])

let isEmpty = evenNumbers.isEmpty //false

evenNumbers.count //10

print(evenNumbers.first) //optional이라고 뜨는 이유? -> first가 어떤거라고 장담할수 없음
let firstItem = evenNumbers.first
let lastItem = evenNumbers.last
if let firstElement = evenNumbers.first {
    print("--> first item is : \(firstElement)")
}

evenNumbers.min()
evenNumbers.max()

var first = evenNumbers[0]
var second = evenNumbers[1]

// ---->
let firstThree = evenNumbers[0...2] // 3개아이템가져옴
evenNumbers.contains(3) // evenNumbers가 3을 가지고 있는지 확인해보기
evenNumbers.contains(4) // evenNumbers가 4을 가지고 있는지 확인해보기

evenNumbers.insert(0, at: 0) // evenNumbers의 0번째에 0을 삽입하기
evenNumbers.removeAll() // 모두 삭제하기
evenNumbers.remove(at: 0) // 0번째 인덱스 삭제하기 
