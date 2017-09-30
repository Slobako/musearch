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
    
    
    // MARK: - Properties
    lazy var searchService: SearchService = SearchService()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: - IBActions
    @IBAction func searchTapped(_ sender: Any) {
        
        if let typedText = searchTextField.text {
            searchService.searchMusicFor(query: typedText)
        }
    }
    
    
    // MARK: - Table View Delegate & Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
    
    
    
}
