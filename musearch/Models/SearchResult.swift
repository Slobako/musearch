//
//  SearchResult.swift
//  musearch
//
//  Created by Slobodan Kovrlija on 9/30/17.
//  Copyright © 2017 Slobodan Kovrlija. All rights reserved.
//

import Foundation

struct SearchResult {
    let artist: String?
    let song: String?
    let album: String?
    let albumArtURL: String?
}

extension SearchResult {
    
    init?(json: [String: Any]) {
        guard let artist = json["artistName"] as? String,
            let song = json["trackName"] as? String,
            let album = json["collectionName"] as? String,
            let albumArtURL = json["artworkUrl100"] as? String
            else { return nil }
    
        self.artist = artist
        self.song = song
        self.album = album
        self.albumArtURL = albumArtURL
    }
}

