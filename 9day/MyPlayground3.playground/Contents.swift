import UIKit

// URLSession
// 1. URLSessionConfiguration
// 2. URLSession
// 3. URLSessionTask를 이용해서 서버와 네트워킹

// URLSessionTask
// 1. - dataTask
// 2. - uploadTask
// 3. - downloadTask

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

// URL
var urlComponents = URLComponents(string: "https://itunes.apple.com/search?")!
let mediaQuery = URLQueryItem(name: "media", value: "music")
let entityQuery = URLQueryItem(name: "entity", value: "song")
let termQuery = URLQueryItem(name: "term", value: "Gdragon")

urlComponents.queryItems?.append(mediaQuery)
urlComponents.queryItems?.append(entityQuery)
urlComponents.queryItems?.append(termQuery)

let requestURL = urlComponents.url!

struct Response: Codable{
    let resultCount: Int
    let tracks: [Track]
    
    // 만든 변수와 실제 변수를 연결해준다.
    enum CodingKeys: String, CodingKey {
        case resultCount
        case tracks = "results"
    }
}

struct Track: Codable {
    let title: String
    let artistName: String
    let thumbnailPath: String
    // 만든 변수와 실제 변수를 연결해준다.
    enum CodingKeys: String, CodingKey {
        case title = "trackName"
        case artistName
        case thumbnailPath = "artworkUrl100"
    }
}

let dataTask = session.dataTask(with: requestURL) { (data, response, error) in
    guard error == nil else {
        return
    }
    
    // 상태코드 확인
    guard let statusCode = (response as? HTTPURLResponse)?.statusCode else  {return} // HTTPURLResponse으로 다운캐스팅
    let successRange = 200 ..< 300
    
    guard successRange.contains(statusCode) else { // 포함하고 있으면 성공
        // handle response error
        return
    }
    
    guard let resultData = data else {
        return
    }
    
  //  let resultString = String(data: resultData, encoding: .utf8)
    // response를 볼수 있는 상태로 받기
    
    
    // response로 받는 것 중 원하는 데이터 뽑아내기
    // 목표: 트랙리스트 오브젝트로 가져오기
    
    // 목록
    // - Data -> track 목록으로 가져오기 [Track]
    // - Track 오브젝트 만들기
    // - Data에서 struct로 파싱 >Codable 이용해서 만들기
    // - Json 형태의 파일, 데이터 > 오브젝트로 만들때 codable 이용
    // - Response, track struct 만들기
    
    // 해야할 일
    // - response, track struct
    // - struct의 프로퍼티 이름과 실제 데이터의 키와 맞추기 (codable 디코딩 가능하게 하기위해)
    // - 파싱하기(decoding)
    // - 트랙리스트 가져오기
    
    // 파싱 및 트랙 가져오기
    do{
    let decoder = JSONDecoder()
    
    let response = try decoder.decode(Response.self, from: resultData)
    let tracks = response.tracks
     print("--> tracks: \(tracks.count)  -\(tracks.first?.title), \(tracks.last?.thumbnailPath)")
           
    }catch let error{
        print("--> error : \(error.localizedDescription)")
    }
}

dataTask.resume() // 실제 네트워킹 진행



