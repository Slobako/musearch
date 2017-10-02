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
    var arrayOfResults = [SearchResult?]()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultsTableView.register(UINib(nibName: "ResultsTableViewCell", bundle: nil), forCellReuseIdentifier: "resultsTableViewCell")
        resultsTableView.isHidden = true
        // Hide empty rows
        resultsTableView.tableFooterView = UIView(frame: .zero)
    }
    
    // MARK: - IBActions
    @IBAction func searchTapped(_ sender: Any) {
        // Dismiss keyboard
        view.endEditing(true)
        
        if let typedText = searchTextField.text {
            let query = prepareEntered(string: typedText)
            
            searchService.searchMusicFor(query: query, completion: { [unowned self] (arrayOfResults) in
                self.arrayOfResults = arrayOfResults
                // Reload table view on the main thread
                DispatchQueue.main.async(execute: {
                    self.resultsTableView.reloadData()
                    if arrayOfResults.count != 0 {
                        let indexPath = IndexPath(row: 0, section: 0)
                        self.resultsTableView.scrollToRow(at: indexPath, at: .top, animated: false)
                    }
                    self.resultsTableView.isHidden = false
                })
            })
        }
    }
    
    func prepareEntered(string: String) -> String {
        // Process search string by replacing spaces and characters not allowed in url
        let stringWithoutSpaces = string.replacingOccurrences(of: " ", with: "+")
        let charsNotAllowed = CharacterSet.urlPathAllowed.inverted
        let allowedString = stringWithoutSpaces.components(separatedBy: charsNotAllowed).joined()
        
        return allowedString
    }
    
    // MARK: - Table View Delegate & Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfResults.count
    }
    
    // Creates table view header with title for search results
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 30))
        let separator = UIView(frame: CGRect(x: 0, y: 29, width: view.frame.size.width, height: 1))
        separator.backgroundColor = UIColor.black
        header.addSubview(separator)
        header.backgroundColor = UIColor.init(red: 0.8039, green: 1.0, blue: 0.8353, alpha: 1)
        let titleLabel = UILabel(frame: CGRect(x: 20, y: 2, width: 180, height: 25))
        header.addSubview(titleLabel)
        titleLabel.text = "Search Results:"
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        
        return header
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let searchResultCell: ResultsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "resultsTableViewCell", for: indexPath) as! ResultsTableViewCell
        if let searchResult = arrayOfResults[indexPath.row] {
            searchResultCell.searchResult = searchResult
        }
        return searchResultCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Instantiate lyrics view controller with navigation bar
        let lyricsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "lyricsViewController") as! LyricsViewController
        let navigationController = UINavigationController(rootViewController: lyricsVC)
        lyricsVC.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(dismissModal))
        lyricsVC.navigationItem.title = "SONG LYRICS"
        
        // Pass data from tapped cell and present new view controller modally
        let selectedCell = tableView.cellForRow(at: indexPath) as! ResultsTableViewCell
        lyricsVC.selectedResult = selectedCell.searchResult
        present(navigationController, animated: true, completion: nil)
    }
    
    @objc func dismissModal() {
        dismiss(animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
