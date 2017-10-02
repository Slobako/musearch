//
//  SearchResultTests.swift
//  musearchTests
//
//  Created by Slobodan Kovrlija on 10/1/17.
//  Copyright © 2017 Slobodan Kovrlija. All rights reserved.
//

import XCTest
@testable import musearch

class SearchResultTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Init_HasArtistSongAlbumCover() {
        let result = SearchResult(artist: "No Doubt", song: "Don't Speak", album: "Tragic Kingdom", albumArtURL: "www.tragickingdomart.com")
        
        XCTAssertNotNil(result, "result should not be nil")
        XCTAssertEqual(result.artist, "No Doubt", "should set artist")
        XCTAssertEqual(result.song, "Don't Speak", "should set song")
        XCTAssertEqual(result.album, "Tragic Kingdom", "should set album")
        XCTAssertEqual(result.albumArtURL, "www.tragickingdomart.com", "should set cover art")

    }
    
}
