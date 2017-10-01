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
                } catch {
                    print("Error occured: \(error)")
                }
            }
        }
        
        task.resume()
    }
    
    // Bypassing ATS (App Transport Security) (for servers with self signed certificate) - would
    // need to change struct to class and make it conform to URLSessionDelegate; seems unnecessary for this case.
    // For now, just placed the ATS bypass in Info.plist.
//    func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
//        completionHandler(.useCredential, URLCredential(trust: challenge.protectionSpace.serverTrust!))
//    }
    
    func searchLyricsFor(song: String, artist: String, completion: @escaping (String?) -> Void) {
        
        let apiConfig = SWGConfiguration.sharedConfig()
        apiConfig?.setApiKey("0714dcd584656e0c4d665c7fa8bb81a6", forApiKeyIdentifier: "apikey")
        let format = "json"
        var lyrics = ""
        let apiInstance = SWGLyricsApi()
        apiInstance.matcherLyricsGetGet(withFormat: format, callback: nil, qTrack: song, qArtist: artist) { (output, error) in
            if let output = output {
                print("OUTPUT IS: \(output)")
                if output.message.header.statusCode == 200 {
                    if let lyrics = output.message.body.lyrics.lyricsBody {
                        completion(lyrics)
                    }
                } else {
                    let statusCode = output.message.header.statusCode.intValue
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
                print("ERROR is: \(error as Any)")
            }
        }
    }
}
