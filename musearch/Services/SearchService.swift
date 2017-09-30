//
//  SearchService.swift
//  musearch
//
//  Created by Slobodan Kovrlija on 9/30/17.
//  Copyright © 2017 Slobodan Kovrlija. All rights reserved.
//

import Foundation

struct SearchService {
    
    func searchMusicFor(query: String, completion: @escaping ([SearchResult]) -> Void) {

        let stringWithoutQuote = query.replacingOccurrences(of: "’", with: "") // !this is not a regular ' from keyboard!
        let stringToSend = stringWithoutQuote.replacingOccurrences(of: " ", with: "+")
        let urlString = "https://itunes.apple.com/search?term=" + stringToSend + "&resultentity=music"
        let searchURL = NSURL.init(string: urlString)
        
        let task = URLSession.shared.dataTask(with: searchURL! as URL) { (data, urlResponse, error) in
            
            if urlResponse != nil {
                do {
                    var arrayOfResults = [SearchResult]()
                    
                    if let responseObject = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? [String: AnyObject] {
                        if let results = responseObject["results"] as? [[String: AnyObject]] {
                            for dict in results {
//                                let artist = dict["artistName"] as? String
//                                let song = dict["trackName"] as? String
//                                let album = dict["collectionName"] as? String
//                                let albumArtURL = dict["artworkUrl100"] as? String
//
//                                let resultDict = ["artist": artist,
//                                                  "song": song,
//                                                  "album": album,
//                                                  "albumArtURL": albumArtURL]
                                if let resultDict = SearchResult(json: dict) {
                                    arrayOfResults.append(resultDict)
                                }
                            }
                        }
                    }
                    completion(arrayOfResults)
                } catch {
                    print("Error occured: \(error)")
                }
            }
        }
        
        task.resume()
    }
    
    
    func searchLyrics() {
        
    }
}
