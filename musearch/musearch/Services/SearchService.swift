//
//  SearchService.swift
//  musearch
//
//  Created by Slobodan Kovrlija on 9/30/17.
//  Copyright © 2017 Slobodan Kovrlija. All rights reserved.
//

import Foundation
import SwaggerClient

struct SearchService {
    
    /// Retrieve music search information from iTunes API
    ///
    /// - Parameter: query: String
    ///
    /// - Returns an array of search result dictionaries in a completion block
    func searchMusicFor(query: String, completion: @escaping ([SearchResult]) -> Void) {

        // Process search string by replacing spaces and weird quotes
        let stringWithoutQuote = query.replacingOccurrences(of: "’", with: "") // !this is not a regular ' from keyboard!
        let stringToSend = stringWithoutQuote.replacingOccurrences(of: " ", with: "+")
        
        // Build request URL
        let urlString = "https://itunes.apple.com/search?term=" + stringToSend + "&resultentity=music"
        let searchURL = NSURL.init(string: urlString)
        
        // Start URL Session data task
        let task = URLSession.shared.dataTask(with: searchURL! as URL) { (data, urlResponse, error) in
            
            if urlResponse != nil {
                do {
                    var arrayOfResults = [SearchResult]()
                    // Parse JSON (response object)
                    if let responseObject = try JSONSerialization.jsonObject(with: data!) as? [String: AnyObject] {
                        if let results = responseObject["results"] as? [[String: AnyObject]] {
                            for dict in results {
                                // Build array of dictionaries with single search results
                                if let resultDict = SearchResult(json: dict) {
                                    arrayOfResults.append(resultDict)
                                }
                            }
                        }
                    }
                    completion(arrayOfResults)
                } catch let error {
                    print("Error occured: \(error)")
                }
            } else {
                if let error = error {
                    print(error.localizedDescription)
                }
            }
        }
        
        task.resume()
    }
    
    /// Retrieve lyrics for the selected song from Musixmatch API
    ///
    /// - Parameters: song: String, artist: String
    ///
    /// - Returns a lyrics string in a completion block
    func searchLyricsFor(song: String, artist: String, completion: @escaping (String?) -> Void) {
        
        let apiConfig = SWGConfiguration.sharedConfig()
        // Set API key
        apiConfig?.setApiKey("0714dcd584656e0c4d665c7fa8bb81a6", forApiKeyIdentifier: "apikey")
        let format = "json"
        // create instance of desired API and perform the request
        let apiInstance = SWGLyricsApi()
        apiInstance.matcherLyricsGetGet(withFormat: format, callback: nil, qTrack: song, qArtist: artist) { (output, error) in
            // output is of type SWGInlineResponse2007
            if let output = output {
                print("OUTPUT IS: \(output)")
                // If request has been successful, pass the lyrics back to the view controller
                if output.message.header.statusCode == 200 {
                    if let lyrics = output.message.body.lyrics.lyricsBody,
                        let copyright = output.message.body.lyrics.lyricsCopyright {
                        completion("\(lyrics)\n\n\(copyright)")
                    }
                    // If not, send error message to display for the user
                } else {
                    let statusCode = output.message.header.statusCode.intValue
                    var lyrics = ""
                    switch statusCode {
                    case 402:
                        lyrics = "The usage limit has been reached. You either exceeded per day requests limit or your balance is insufficient."
                    case 404:
                        lyrics = "LYRICS NOT FOUND"
                    case 503:
                        lyrics = "Our system is a bit busy at the moment and your request cannot be fulfilled. Please try again later."
                    default:
                        lyrics = "Oops, something went wrong"
                    }
                    completion(lyrics)
                }
            } else {
                print("ERROR is: \(String(describing: error?.localizedDescription))")
            }
        }
    }
    
}
