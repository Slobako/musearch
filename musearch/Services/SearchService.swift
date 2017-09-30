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
    
    // Bypassing ATS protection (for servers with self signed certificate) - would need to change struct to class and make it conform to URLSessionDelegate; seems unnecessary for this case
    // For now, just placed the ATS bypass in Info.plist
//    func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
//        completionHandler(.useCredential, URLCredential(trust: challenge.protectionSpace.serverTrust!))
//    }
    
    func searchLyrics() {
        
    }
}
