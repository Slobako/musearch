//
//  SearchService.swift
//  musearch
//
//  Created by Slobodan Kovrlija on 9/30/17.
//  Copyright © 2017 Slobodan Kovrlija. All rights reserved.
//

import Foundation

struct SearchService {
    
    func searchMusicFor(query: String) {

        let stringToSend = query.replacingOccurrences(of: " ", with: "+")
        let urlString = "https://itunes.apple.com/search?term=" + stringToSend + "&resultentity=music"
        let searchURL = NSURL.init(string: urlString)
        
        let task = URLSession.shared.dataTask(with: searchURL! as URL) { (data, URLResponse, error) in
            
            print("URLResponse is: \(String(describing: URLResponse))")
            
            do {
                let responseDict = try JSONSerialization.jsonObject(with: data!, options: [])
                print(responseDict)
            } catch {
                print(error)
            }
        }
        
        task.resume()
    }
    
    
    func searchLyrics() {
        
    }
}
