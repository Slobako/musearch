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
        
        resultsTableView.register(UINib(nibName: "ResultsTableViewCell", bundle: nil), forCellReuseIdentifier: "resultsTableViewCell")
        resultsTableView.isHidden = true
    }
    
    // MARK: - IBActions
    @IBAction func searchTapped(_ sender: Any) {
        
        if let typedText = searchTextField.text {
            searchService.searchMusicFor(query: typedText, completion: { (arrayOfResults) in
                self.arrayOfResults = arrayOfResults
                DispatchQueue.main.async(execute: {
                    self.resultsTableView.reloadData()
                    self.resultsTableView.isHidden = false
                })
            })
            
        }
    }
    
    
    // MARK: - Table View Delegate & Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfResults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let searchResultCell: ResultsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "resultsTableViewCell", for: indexPath) as! ResultsTableViewCell
        if let song = arrayOfResults[indexPath.row]["song"] as? String {
            searchResultCell.songLabel.text = song
        }
        return searchResultCell
    }
    
    
    
}
