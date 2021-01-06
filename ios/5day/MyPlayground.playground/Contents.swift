import UIKit

var evenNumber: [Int]=[2,4,6,8]
let evenNumber2: Array<Int>=[2,4,6,8]

//evenNumber2.append(10) -> error let으로 선언되어있어서 let을 var로 변경해야한다.

// element 추가하는 방법
evenNumber.append(10)
evenNumber += [12, 14, 16]
evenNumber.append(contentsOf: [18, 20])

// 비어있는지?
let isEmpty = evenNumber.isEmpty

// 원소가 몇개인지
evenNumber.count

// 첫번째원소는?
print(evenNumber.first) // 첫번째 원소 반환이 optional

let firstItem = evenNumber.first // int가 아니고 optional  (첫번째 원소가 있을 수도 있고 없을수도 있어서)

if let firstElement = evenNumber.first {
    print("\(firstElement)")
    
}

evenNumber.min()
evenNumber.max()
// 가장 큰 값과 가장 작은 값을 뽑기, optional

var FirstItem = evenNumber[0]
var secondItem = evenNumber[1]
//var error = evenNumber[20] //범위에 벗어난 범위임!!

let firstThree = evenNumber[0...2] // 0, 1, 2 인덱스의 값을 가지고 온다
evenNumber.contains(3) // evenNumber 안에 값이 3인게 있니??
evenNumber.insert(0, at: 0) // 0번째 인덱스에 0을 삽입한다 이후 0번~ 마지막 인덱스는 한칸씩 밀린다

//evenNumber.removeAll() // 모두 지우기!! 주석 하고 실행하기.. 왜냐면 모두 지우는거라 오류떠!!

evenNumber.remove(at: 1) // 값이 0인 인덱스 삭제

evenNumber[0] = -2

evenNumber[0...2] = [-2, 0, 2]

evenNumber.swapAt(0, 9) // 0번째 인덱스와 9번째 인덱스를 바꾸기
/*
for num in evenNumber {
    print(num)
}
*/

for (index, num) in evenNumber.enumerated() {
    print("idx: \(index), value: \(num)")
}

evenNumber.dropFirst(3) // 인덱스 3 ~ 마지막 까지의 값을 보여준다
evenNumber.dropLast(3)  // 마지막 인덱스 3개를 제외하한 값을 보여준다
evenNumber.prefix(3) // 처음에서 3개 값을 가져오기
evenNumber.suffix(3) // 끝에서 3개 값을 가져오기
