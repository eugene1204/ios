import UIKit

// ios에서 url을 어떻게 표시?
// url
let urlString = "https://itunes.apple.com/search?media=music&entity=song&term=Gdragon"
let url = URL(string: urlString)

url?.absoluteString
url?.scheme //protocol
url?.host
url?.path
url?.query
url?.baseURL

let baseURL = URL(string: "https://itunes.apple.com")
let relativeURL = URL(string: "search?media=music&entity=song&term=Gdragon", relativeTo: baseURL)
relativeURL?.absoluteString
relativeURL?.scheme //protocol
relativeURL?.host
relativeURL?.path
relativeURL?.query
relativeURL?.baseURL

// URLComponents
// 서버가 이해할 수 있는 말로 바꾸기 ex) 지드래곤 -> Gdragon

var urlComponents = URLComponents(string: "https://itunes.apple.com/search?")
let mediaQuery = URLQueryItem(name: "media", value: "music")
let entityQuery = URLQueryItem(name: "entity", value: "song")
let termQuery = URLQueryItem(name: "term", value: "Gdragon")

// 인코딩 필요
let termQuery2 = URLQueryItem(name: "term", value: "지드래곤")
let termQuery3 = URLQueryItem(name: "term", value: "gdragon a")

urlComponents?.queryItems?.append(mediaQuery)
urlComponents?.queryItems?.append(entityQuery)
urlComponents?.queryItems?.append(termQuery)
//urlComponents?.queryItems?.append(termQuery2)

urlComponents?.url
urlComponents?.string
urlComponents?.queryItems?.last?.value
