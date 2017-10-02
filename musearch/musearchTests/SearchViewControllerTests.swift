//
//  SearchViewControllerTests.swift
//  musearchTests
//
//  Created by Slobodan Kovrlija on 10/1/17.
//  Copyright © 2017 Slobodan Kovrlija. All rights reserved.
//

import XCTest
@testable import musearch

class SearchViewControllerTests: XCTestCase {
    
    var searchViewController: SearchViewController!
    
    override func setUp() {
        super.setUp()
        
        searchViewController = SearchViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_tableViewNotNilAfterViewDidLoad() {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        let sut = storyboard.instantiateInitialViewController() as! SearchViewController
        _ = sut.view
        
        XCTAssertNotNil(sut.resultsTableView, "table view should not be nil")
    }
    
    func test_prepareEntered_ReturnsStringWithoutSpacesAndSpecChars() {
        
        let string1 = "born again"
        let string2 = "like a prayer"
        let string3 = "Moore’s" // Note differnce btwn '(allowed) and ’(not allowed)
        let string4 = "Guns’n Roses"
        let string5 = "Housecat{}?"
        
        let converted1 = searchViewController.prepareEntered(string: string1)
        let converted2 = searchViewController.prepareEntered(string: string2)
        let converted3 = searchViewController.prepareEntered(string: string3)
        let converted4 = searchViewController.prepareEntered(string: string4)
        let converted5 = searchViewController.prepareEntered(string: string5)
        
        XCTAssertEqual(converted1, "born+again")
        XCTAssertEqual(converted2, "like+a+prayer")
        XCTAssertEqual(converted3, "Moores")
        XCTAssertEqual(converted4, "Gunsn+Roses")
        XCTAssertEqual(converted5, "Housecat")
    }
    
}
