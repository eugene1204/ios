import UIKit

// Queue - Main, Global, Custom

// main - 사용자 인터랙션
DispatchQueue.main.async {
    // UI update
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
}

// global
DispatchQueue.global(qos: .userInteractive).async {
    // 진짜 핵중요, 지금 당장해야함
}

DispatchQueue.global(qos: .userInitiated).async {
    // 거의 바로 해줘야 할것, 사용자가 결과를 기다린다
}

DispatchQueue.global(qos: .default).async {
    // 이건 굳이?
}

DispatchQueue.global().async {
    // .default와 비슷.. 그냥 이거 쓰는게 나을수도
}

DispatchQueue.global(qos: .utility).async {
    // 시가닝 좀 걸리는 일들, 사용자가 당장 기다리지 않는것, 네트워킹, 큰파일 불러올때
}

DispatchQueue.global(qos: .background).async {
    // 사용자한테 당장 인식될 필요가 없는 것들...
    // ex 뉴스데이터 미리 받기, 위치 업데이트, 영상 다운로드
}

//custom
let concurrentQueue = DispatchQueue(label: "concurrent", qos: .background, attributes: .concurrent)
let serialQueue = DispatchQueue(label: "serial", qos: .background)
// 복합적인 상황 (작업간의 의존이 있는 경우)
func downloadImageFromServer() -> UIImage{
    // Heavy Task
    
    return UIImage()
}

func updateUI(image: UIImage){
    
}
DispatchQueue.global(qos: .background).async {
    let image = downloadImageFromServer()
    // 이미지 작업은 main으로
    
    DispatchQueue.main.async {
        updateUI(image: image)
    }
    
}
// Sync, Async

//Async
DispatchQueue.global(qos: .background).async {
    for i in 0...5 {
        print("A, \(i)")
    }
}

DispatchQueue.global(qos: .userInteractive).async {
    for i in 0...5 {
        print("B, \(i)")
    }
}

//Sync
DispatchQueue.global(qos: .background).async {
    for i in 0...5 {
        print("C, \(i)")
    }
}
print("\n")

DispatchQueue.global(qos: .userInteractive).async {
    for i in 0...5 {
        print("D, \(i)")
    }
}
