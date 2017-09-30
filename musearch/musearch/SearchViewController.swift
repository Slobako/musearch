//
//  SearchViewController.swift
//  musearch
//
//  Created by Slobodan Kovrlija on 9/29/17.
//  Copyright © 2017 Slobodan Kovrlija. All rights reserved.
//

import UIKit
import Foundation

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - IBOutlets
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var resultsTableView: UITableView!
    
    // MARK: - Properties
    lazy var searchService: SearchService = SearchService()
    var arrayOfResults = [[String: String?]]()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: - IBActions
    @IBAction func searchTapped(_ sender: Any) {
        
        if let typedText = searchTextField.text {
            searchService.searchMusicFor(query: typedText, completion: { (arrayOfResults) in
                self.arrayOfResults = arrayOfResults
                DispatchQueue.main.async(execute: {
                    self.resultsTableView.reloadData()
                })
            })
            
        }
    }
    
    
    // MARK: - Table View Delegate & Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfResults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if let song = arrayOfResults[indexPath.row]["song"] as? String {
            print("Row No.\(indexPath.row): \(song)")
        }
        
        return cell
    }
    
    
    
}
