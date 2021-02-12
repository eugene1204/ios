//
//  TrackManager.swift
//  AppleMusicStApp
//
//  Created by joonwon lee on 2020/01/12.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit
import AVFoundation

class TrackManager {
    // TODO: 프로퍼티 정의하기 - 트랙들, 앨범들, 오늘의 곡
    var tracks: [AVPlayerItem] = []
    var albums: [Album] = []
    var todaysTrack: AVPlayerItem?
    // TODO: 생성자 정의하기
    init() {
        let tracks = loadTracks()
        self.tracks = tracks
        self.albums = loadAlbums(tracks: tracks)
        // tracks에서 랜덤으로 가져오기
        self.todaysTrack = self.tracks.randomElement()
    }

    // TODO: 트랙 로드하기
    func loadTracks() -> [AVPlayerItem] { // 파일들을 AVPlayerItem으로 가져옴
        // 파일들을 읽어서 AVPlayerItem으로 만들기
        // 각 파일들의 url을 가져오기
        // app안에 있는 Bundle을 이용
        let urls = Bundle.main.urls(forResourcesWithExtension: "mp3", subdirectory: nil) ?? [] //optional이므로 없으면 []을 가져옴
//        var items: [AVPlayerItem] = []
//        for url in urls {
//           let  item = AVPlayerItem(url: url)
//            items.append(item)
//        }
        
        let items = urls.map { url -> AVPlayerItem in
            let item = AVPlayerItem(url: url)
            return item
        }
        return items
    }
    
    // TODO: 인덱스에 맞는 트랙 로드하기
    func track(at index: Int) -> Track? {
        let playerItem = tracks[index]
//      playerItem > Track
        
        return playerItem.convertToTrack()
    }

    // TODO: 앨범 로딩메소드 구현
    func loadAlbums(tracks: [AVPlayerItem]) -> [Album] {
        let trackList :[Track] = tracks.compactMap{$0.convertToTrack()}
        // Dictionary는 각각의 이름별로 track을 나눈다.
        let albumDics = Dictionary(grouping: trackList, by: {(track) in track.albumName})
        var albums: [Album] = []
    
        for (key, value) in albumDics {
            let title = key
            let tracks = value
            let album = Album(title: title, tracks: tracks)
            albums.append(album)
        }
        return albums
    }

    // TODO: 오늘의 트랙 랜덤으로 선책
    func loadOtherTodaysTrack() {
        self.todaysTrack = self.tracks.randomElement()
    }
}
